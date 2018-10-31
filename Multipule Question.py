from question import Question

question_prompts = [
    "what color are apples? \n (a) red/green \n(b) Purple \n\n",
    "what color are banana? \n (a) red/green \n(b) yellow \n\n",
    "what color are strawberries? \n (a) red/green \n(b) blue \n\n"
]

questions = [
    Question(question_prompts[0], "a"),
    Question(question_prompts[1], "b"),
    Question(question_prompts[2], "b"),
]

def run_test(questions):
    score = 0
    for question in  questions:
        answer = input(question.prompt)
        if answer == question.answer:
            score +=1
    print("YOU got " + str(score) + " questions")

run_test(questions)

