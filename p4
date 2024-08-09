pro 04

{
"_id": 1,
"name": "Alice",
"scores": [ { "type": "exam", "score": 90 }, { "type": "quiz", "score": 85 }, { "type": "homework", "score": 80 } ]
}


1. $ Operator
db.students.find(
{ "name": "Alice", "scores.type": "exam" },
{ "name": 1, "scores.$": 1 }
)

2. $elemMatch Operator
>db.students.find(
{ "name": "Bob" },
{ "name": 1, "scores": { $elemMatch: { "type": "quiz" } } }
)


3. $slice Operator
> db.students.find(
{},
{ "name": 1, "scores": { $slice: 2 } }
)

db.students.find(
{},
{ "name": 1, "scores": { $slice: -1 } }
)
