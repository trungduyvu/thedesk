#!/bin/sh

host=$1

curl -i -X POST $host -d "description=use prior knowledge and experiences to understand meanings in English" -d "formatstring=use prior knowledge of {subject} to understand meanings of {vocabulary}" -d section=1 -d subsection=A
curl -i -X POST $host -d "description=monitor oral and written language production and employ self-corrective techniques or other resources" -d "formatstring=be able to pronounce {vocabulary}" -d section=1 -d subsection=B
curl -i -X POST $host -d "description=use strategic learning techniques to learn new vocabulary, such as {vocabulary}, about {subject}" -d section=1 -d subsection=C
curl -i -X POST $host -d "description=speak using learning strategies such as requesting assistance, employing non-verbal cues, and using synonyms and circumlocution (conveying ideas by defining or describing when exact English words are not known)" -d "formatstring=use synonyms and cicumlocution for learning {vocabulary}" -d section=1 -d subsection=D
curl -i -X POST $host -d "description=internalize new basic and academic language by using and reusing it in meaningful ways in speaking and writing activities that build concept and language attainment" -d "formatstring=formatstring" -d section=1 -d subsection=E
curl -i -X POST $host -d "description=description" -d "formatstring=formatstring" -d section=1 -d subsection=E
curl -i -X POST $host -d "description=description" -d "formatstring=formatstring" -d section=1 -d subsection=E
curl -i -X POST $host -d "description=description" -d "formatstring=formatstring" -d section=1 -d subsection=E
curl -i -X POST $host -d "description=description" -d "formatstring=formatstring" -d section=1 -d subsection=E



curl -i -X POST $host -d "description=distinguish sounds and intonation patterns of English with increasing ease" -d "formatstring=distinguish sound and intonation patterns between {vocabulary}" -d section=2 -d subsection=A