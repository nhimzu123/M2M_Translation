from transformers import M2M100ForConditionalGeneration, M2M100Tokenizer
import sys
import time

t = time.time()
model = M2M100ForConditionalGeneration.from_pretrained("facebook/m2m100_1.2B").to('cuda')
tokenizer = M2M100Tokenizer.from_pretrained("facebook/m2m100_1.2B")

print('Time cost to load model:', time.time() - t)

with open(sys.argv[1]) as input_file:  # input file
    lines = input_file.readlines()

with open(sys.argv[2], mode='w') as output_file:  # output file
    for i, line in enumerate(lines):
        article_vi = line
        # translate Vietnamese to Chinese,...
        tokenizer.src_lang = "vi"  # Vietnamese code
        # print(f'Translating line {i}...')
        # t2 = time.time()
        encoded_vi = tokenizer(article_vi, return_tensors="pt").to('cuda')
        generated_tokens = model.generate(
            **encoded_vi,
            forced_bos_token_id=tokenizer.lang_code_to_id["zh"]  # Chinese code
        ).to('cuda')
        texts = tokenizer.batch_decode(generated_tokens, skip_special_tokens=True)
        # print(f'Time cost to translate line {i}:', time.time() - t2)
        output_file.writelines(texts[0] + '\n')
        if i == 3:
            print('Translating... Please wait')

# print('Total time cost:', time.time() - t)
print('Done!')

