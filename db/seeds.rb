Pokemon.create(name: 'フシギバナ', image: 'venusaur.png', attack_type: 1, role: 0, attack_category: 1)
Pokemon.create(name: 'リザードン', image: 'charizard.png', attack_type: 0, role: 3, attack_category: 0)
Pokemon.create(name: 'カメックス', image: 'blastoise.png', attack_type: 1, role: 1, attack_category: 1)
Pokemon.create(name: 'ピカチュウ', image: 'pikachu.png', attack_type: 1, role: 0, attack_category: 1)
Pokemon.create(name: 'アローラキュウコン', image: 'alolan-ninetales.png', attack_type: 1, role: 0, attack_category: 1)
Pokemon.create(name: 'プクリン', image: 'wigglytuff.png', attack_type: 0, role: 4, attack_category: 1)
Pokemon.create(name: 'カイリキー', image: 'machamp.png', attack_type: 0, role: 3, attack_category: 0)
Pokemon.create(name: 'ヤドラン', image: 'slowbro.png', attack_type: 1, role: 1, attack_category: 1)
Pokemon.create(name: 'ゲンガー', image: 'gengar.png', attack_type: 0, role: 2, attack_category: 1)
Pokemon.create(name: 'バリヤード', image: 'mr-mime.png', attack_type: 0, role: 4, attack_category: 1)
Pokemon.create(name: 'カビゴン', image: 'snorlax.png', attack_type: 0, role: 1, attack_category: 0)
Pokemon.create(name: 'ハピナス', image: 'blissey.png', attack_type: 0, role: 4, attack_category: 1)
Pokemon.create(name: 'サーナイト', image: 'gardevoir.png', attack_type: 1, role: 0, attack_category: 1)
Pokemon.create(name: 'アブソル', image: 'absol.png', attack_type: 0, role: 2, attack_category: 0)
Pokemon.create(name: 'ガブリアス', image: 'garchomp.png', attack_type: 0, role: 3, attack_category: 0)
Pokemon.create(name: 'ルカリオ', image: 'lucario.png', attack_type: 0, role: 3, attack_category: 0)
Pokemon.create(name: 'イワパレス', image: 'crustle.png', attack_type: 0, role: 1, attack_category: 0)
Pokemon.create(name: 'ゲッコウガ', image: 'greninja.png', attack_type: 1, role: 0, attack_category: 0)
Pokemon.create(name: 'ファイアロー', image: 'talonflame.png', attack_type: 0, role: 2, attack_category: 0)
Pokemon.create(name: 'ゼラオラ', image: 'zeraora.png', attack_type: 0, role: 2, attack_category: 0)
Pokemon.create(name: 'エースバーン', image: 'cinderace.png', attack_type: 1, role: 0, attack_category: 0)
Pokemon.create(name: 'ワタシラガ', image: 'eldegoss.png', attack_type: 1, role: 4, attack_category: 1)
Pokemon.create(name: 'ウッウ', image: 'cramorant.png', attack_type: 1, role: 0, attack_category: 1)

Stage.create(name: 'レモータスタジアム', image: 'remoat_stadium.jpg')
Stage.create(name: 'ジーヴルシティ', image: 'shivre_city.jpg')
Stage.create(name: 'マールスタジアム', image: 'mer_stadium.jpg')
Stage.create(name: 'ゼフィオパーク', image: 'auroma_park.jpg')

BattleItem.create(name: 'キズぐすり', image: 'battle_item_1.png')
BattleItem.create(name: 'プラスパワー', image: 'battle_item_2.png')
BattleItem.create(name: 'スピーダー', image: 'battle_item_3.png')
BattleItem.create(name: 'エネコのしっぽ', image: 'battle_item_4.png')
BattleItem.create(name: 'だっしゅつボタン', image: 'battle_item_5.png')
BattleItem.create(name: 'どんそくスモーク', image: 'battle_item_6.png')
BattleItem.create(name: 'なんでもなおし', image: 'battle_item_7.png')
BattleItem.create(name: 'ゴールかそくそうち', image: 'battle_item_8.png')

Tool.create(name: 'ピントレンズ', image: 'tool_1.png')
Tool.create(name: 'ちからのハチマキ', image: 'tool_2.png')
Tool.create(name: 'かるいし', image: 'tool_3.png')
Tool.create(name: 'かいがらのすず', image: 'tool_4.png')
Tool.create(name: 'ものしりメガネ', image: 'tool_5.png')
Tool.create(name: 'きあいのハチマキ', image: 'tool_6.png')
Tool.create(name: 'おたすけバリア', image: 'tool_7.png')
Tool.create(name: 'ゴツゴツメット', image: 'tool_8.png')
Tool.create(name: 'がくしゅうそうち', image: 'tool_9.png')
Tool.create(name: 'たべのこし', image: 'tool_10.png')
Tool.create(name: 'とつげきチョッキ', image: 'tool_11.png')
Tool.create(name: 'ゴールサポーター', image: 'tool_12.png')
Tool.create(name: 'エナジーアンプ', image: 'tool_13.png')
Tool.create(name: 'エオスビスケット', image: 'tool_14.png')
Tool.create(name: 'もうこうダンベル', image: 'tool_15.png')
Tool.create(name: 'しんげきメガネ', image: 'tool_16.png')

Skill.create(pokemon_id: 1, button: 0, name: 'ヘドロばくだん', image: 'venusaur_skill_1.png', attack_category: 1, level: 5, cool_time: 6, attack_type: '遠隔')
Skill.create(pokemon_id: 1, button: 0, name: 'ギガドレイン', image: 'venusaur_skill_2.png', attack_category: 1, level: 5, cool_time: 7, attack_type: '回復')
Skill.create(pokemon_id: 1, button: 1, name: 'ソーラービーム', image: 'venusaur_skill_3.png', attack_category: 1, level: 7, cool_time: 10, attack_type: '範囲')
Skill.create(pokemon_id: 1, button: 1, name: 'はなびらのまい', image: 'venusaur_skill_4.png', attack_category: 1, level: 7, cool_time: 11, attack_type: '範囲')
Skill.create(pokemon_id: 2, button: 0, name: 'かえんほうしゃ', image: 'charizard_skill_1.png', attack_category: 0, level: 5, cool_time: 5.5, attack_type: '遠隔')
Skill.create(pokemon_id: 2, button: 0, name: 'ほのおのパンチ', image: 'charizard_skill_2.png', attack_category: 0, level: 5, cool_time: 6, attack_type: 'ムーブ')
Skill.create(pokemon_id: 2, button: 1, name: 'だいもんじ', image: 'charizard_skill_3.png', attack_category: 0, level: 7, cool_time: 8, attack_type: '範囲')
Skill.create(pokemon_id: 2, button: 1, name: 'フレアドライブ', image: 'charizard_skill_4.png', attack_category: 0, level: 7, cool_time: 10, attack_type: 'ムーブ')
Skill.create(pokemon_id: 3, button: 0, name: 'ハイドロポンプ', image: 'blastoise_skill_1.png', attack_category: 1, level: 5, cool_time: 8.5, attack_type: '遠隔')
Skill.create(pokemon_id: 3, button: 0, name: 'しおふき', image: 'blastoise_skill_2.png', attack_category: 1, level: 5, cool_time: 9, attack_type: '範囲')
Skill.create(pokemon_id: 3, button: 1, name: 'なみのり', image: 'blastoise_skill_3.png', attack_category: 1, level: 7, cool_time: 12, attack_type: 'ムーブ')
Skill.create(pokemon_id: 3, button: 1, name: 'こうそくスピン', image: 'blastoise_skill_4.png', attack_category: 1, level: 7, cool_time: 11, attack_type: '能力上昇')
Skill.create(pokemon_id: 4, button: 0, name: 'エレキボール', image: 'pikachu_skill_1.png', attack_category: 1, level: 4, cool_time: 5, attack_type: '必中')
Skill.create(pokemon_id: 4, button: 0, name: 'かみなり', image: 'pikachu_skill_2.png', attack_category: 1, level: 4, cool_time: 8, attack_type: '範囲')
Skill.create(pokemon_id: 4, button: 1, name: 'ボルテッカー', image: 'pikachu_skill_3.png', attack_category: 1, level: 6, cool_time: 10, attack_type: '妨害')
Skill.create(pokemon_id: 4, button: 1, name: '10まんボルト', image: 'pikachu_skill_4.png', attack_category: 1, level: 6, cool_time: 8, attack_type: '妨害')
Skill.create(pokemon_id: 5, button: 0, name: 'ゆきなだれ', image: 'alolan-ninetales_skill_1.png', attack_category: 1, level: 4, cool_time: 7, attack_type: '範囲')
Skill.create(pokemon_id: 5, button: 0, name: 'マジカルシャイン', image: 'alolan-ninetales_skill_2.png', attack_category: 1, level: 4, cool_time: 7.5, attack_type: '妨害')
Skill.create(pokemon_id: 5, button: 1, name: 'ふぶき', image: 'alolan-ninetales_skill_3.png', attack_category: 1, level: 6, cool_time: 11, attack_type: '遠隔')
Skill.create(pokemon_id: 5, button: 1, name: 'オーロラベール', image: 'alolan-ninetales_skill_4.png', attack_category: 2, level: 6, cool_time: 13, attack_type: '能力上昇')
Skill.create(pokemon_id: 6, button: 0, name: 'おうふくビンタ', image: 'wigglytuff_skill_1.png', attack_category: 1, level: 6, cool_time: 5, attack_type: '近接')
Skill.create(pokemon_id: 6, button: 0, name: 'マジカルシャイン', image: 'wigglytuff_skill_2.png', attack_category: 1, level: 6, cool_time: 4.5, attack_type: '範囲')
Skill.create(pokemon_id: 6, button: 1, name: 'ころがる', image: 'wigglytuff_skill_3.png', attack_category: 1, level: 4, cool_time: 10, attack_type: '妨害')
Skill.create(pokemon_id: 6, button: 1, name: 'うたう', image: 'wigglytuff_skill_4.png', attack_category: 2, level: 4, cool_time: 10, attack_type: '範囲')
Skill.create(pokemon_id: 7, button: 0, name: 'インファイト', image: 'machamp_skill_1.png', attack_category: 0, level: 7, cool_time: 6, attack_type: '近接')
Skill.create(pokemon_id: 7, button: 0, name: 'クロスチョップ', image: 'machamp_skill_2.png', attack_category: 0, level: 7, cool_time: 6, attack_type: 'ムーブ')
Skill.create(pokemon_id: 7, button: 1, name: 'ばくれつパンチ', image: 'machamp_skill_3.png', attack_category: 0, level: 5, cool_time: 8, attack_type: 'ムーブ')
Skill.create(pokemon_id: 7, button: 1, name: 'じごくぐるま', image: 'machamp_skill_4.png', attack_category: 0, level: 5, cool_time: 11, attack_type: '妨害')
Skill.create(pokemon_id: 8, button: 0, name: 'ねっとう', image: 'slowbro_skill_1.png', attack_category: 1, level: 4, cool_time: 5, attack_type: '近接')
Skill.create(pokemon_id: 8, button: 0, name: 'なみのり', image: 'slowbro_skill_2.png', attack_category: 1, level: 4, cool_time: 9, attack_type: 'ムーブ')
Skill.create(pokemon_id: 8, button: 1, name: 'ドわすれ', image: 'slowbro_skill_3.png', attack_category: 2, level: 6, cool_time: 13, attack_type: '回復')
Skill.create(pokemon_id: 8, button: 1, name: 'テレキネシス', image: 'slowbro_skill_4.png', attack_category: 2, level: 6, cool_time: 11, attack_type: '妨害')
Skill.create(pokemon_id: 9, button: 0, name: 'シャドーボール', image: 'gengar_skill_1.png', attack_category: 1, level: 5, cool_time: 4.5, attack_type: '遠隔')
Skill.create(pokemon_id: 9, button: 0, name: 'ヘドロばくだん', image: 'gengar_skill_2.png', attack_category: 1, level: 5, cool_time: 8, attack_type: '範囲')
Skill.create(pokemon_id: 9, button: 1, name: 'ゆめくい', image: 'gengar_skill_3.png', attack_category: 1, level: 7, cool_time: 8, attack_type: '遠隔')
Skill.create(pokemon_id: 9, button: 1, name: 'たたりめ', image: 'gengar_skill_4.png', attack_category: 1, level: 7, cool_time: 7.5, attack_type: 'ムーブ')
Skill.create(pokemon_id: 10, button: 0, name: 'ねんりき', image: 'mr-mime_skill_1.png', attack_category: 1, level: 4, cool_time: 6, attack_type: '遠隔')
Skill.create(pokemon_id: 10, button: 0, name: 'サイコキネシス', image: 'mr-mime_skill_2.png', attack_category: 1, level: 4, cool_time: 6, attack_type: '能力低下')
Skill.create(pokemon_id: 10, button: 1, name: 'バリアー', image: 'mr-mime_skill_3.png', attack_category: 2, level: 6, cool_time: 2, attack_type: '妨害')
Skill.create(pokemon_id: 10, button: 1, name: 'ガードスワップ', image: 'mr-mime_skill_4.png', attack_category: 1, level: 6, cool_time: 4.5, attack_type: '能力低下')
Skill.create(pokemon_id: 11, button: 0, name: 'ヘビーボンバー', image: 'snorlax_skill_1.png', attack_category: 0, level: 6, cool_time: 7, attack_type: 'ムーブ')
Skill.create(pokemon_id: 11, button: 0, name: 'じたばた', image: 'snorlax_skill_2.png', attack_category: 0, level: 6, cool_time: 6.5, attack_type: '妨害')
Skill.create(pokemon_id: 11, button: 1, name: 'とおせんぼう', image: 'snorlax_skill_3.png', attack_category: 2, level: 8, cool_time: 11, attack_type: '妨害')
Skill.create(pokemon_id: 11, button: 1, name: 'あくび', image: 'snorlax_skill_4.png', attack_category: 2, level: 8, cool_time: 12, attack_type: '妨害')
Skill.create(pokemon_id: 12, button: 0, name: 'タマゴばくだん', image: 'blissey_skill_1.png', attack_category: 1, level: 6, cool_time: 7.5, attack_type: '遠隔')
Skill.create(pokemon_id: 12, button: 0, name: 'てだすけ', image: 'blissey_skill_2.png', attack_category: 2, level: 6, cool_time: 9, attack_type: '能力上昇')
Skill.create(pokemon_id: 12, button: 1, name: 'タマゴうみ', image: 'blissey_skill_3.png', attack_category: 2, level: 4, cool_time: 2, attack_type: '回復')
Skill.create(pokemon_id: 12, button: 1, name: 'しんぴのまもり', image: 'blissey_skill_4.png', attack_category: 2, level: 4, cool_time: 8, attack_type: '能力上昇')
Skill.create(pokemon_id: 13, button: 0, name: 'サイコキネシス', image: 'gardevoir_skill_1.png', attack_category: 1, level: 8, cool_time: 7, attack_type: '遠隔')
Skill.create(pokemon_id: 13, button: 0, name: 'ムーンフォース', image: 'gardevoir_skill_2.png', attack_category: 1, level: 8, cool_time: 6, attack_type: '遠隔')
Skill.create(pokemon_id: 13, button: 1, name: 'サイコショック', image: 'gardevoir_skill_3.png', attack_category: 1, level: 6, cool_time: 10, attack_type: '範囲')
Skill.create(pokemon_id: 13, button: 1, name: 'みらいよち', image: 'gardevoir_skill_4.png', attack_category: 1, level: 6, cool_time: 9, attack_type: '範囲')
Skill.create(pokemon_id: 14, button: 0, name: 'つじぎり', image: 'absol_skill_1.png', attack_category: 0, level: 5, cool_time: 5, attack_type: 'ムーブ')
Skill.create(pokemon_id: 14, button: 0, name: 'おいうち', image: 'absol_skill_2.png', attack_category: 0, level: 5, cool_time: 5, attack_type: 'ムーブ')
Skill.create(pokemon_id: 14, button: 1, name: 'サイコカッター', image: 'absol_skill_3.png', attack_category: 0, level: 7, cool_time: 7, attack_type: '近接')
Skill.create(pokemon_id: 14, button: 1, name: 'ふいうち', image: 'absol_skill_4.png', attack_category: 0, level: 7, cool_time: 7, attack_type: '妨害')
Skill.create(pokemon_id: 15, button: 0, name: 'あなをほる', image: 'garchomp_skill_1.png', attack_category: 0, level: 6, cool_time: 8, attack_type: 'ムーブ')
Skill.create(pokemon_id: 15, button: 0, name: 'ドラゴンダイブ', image: 'garchomp_skill_2.png', attack_category: 0, level: 6, cool_time: 6, attack_type: 'ムーブ')
Skill.create(pokemon_id: 15, button: 1, name: 'じしん', image: 'garchomp_skill_3.png', attack_category: 0, level: 8, cool_time: 7, attack_type: '範囲')
Skill.create(pokemon_id: 15, button: 1, name: 'ドラゴンクロー', image: 'garchomp_skill_4.png', attack_category: 0, level: 8, cool_time: 5, attack_type: '近接')
Skill.create(pokemon_id: 16, button: 0, name: 'しんそく', image: 'lucario_skill_1.png', attack_category: 0, level: 5, cool_time: 9, attack_type: 'ムーブ')
Skill.create(pokemon_id: 16, button: 0, name: 'グロウパンチ', image: 'lucario_skill_2.png', attack_category: 0, level: 5, cool_time: 7, attack_type: 'ムーブ')
Skill.create(pokemon_id: 16, button: 1, name: 'ボーンラッシュ', image: 'lucario_skill_3.png', attack_category: 0, level: 7, cool_time: 10, attack_type: '近接&ムーブ')
Skill.create(pokemon_id: 16, button: 1, name: 'インファイト', image: 'lucario_skill_4.png', attack_category: 0, level: 7, cool_time: 9, attack_type: '近接')
Skill.create(pokemon_id: 17, button: 0, name: 'がんせきふうじ', image: 'crustle_skill_1.png', attack_category: 0, level: 4, cool_time: 5, attack_type: '範囲')
Skill.create(pokemon_id: 17, button: 0, name: 'からをやぶる', image: 'crustle_skill_2.png', attack_category: 2, level: 4, cool_time: 7, attack_type: '能力上昇')
Skill.create(pokemon_id: 17, button: 1, name: 'ステルスロック', image: 'crustle_skill_3.png', attack_category: 0, level: 6, cool_time: 8, attack_type: '範囲')
Skill.create(pokemon_id: 17, button: 1, name: 'シザークロス', image: 'crustle_skill_4.png', attack_category: 0, level: 6, cool_time: 9, attack_type: '近接')
Skill.create(pokemon_id: 18, button: 0, name: 'みずしゅりけん', image: 'greninja_skill_1.png', attack_category: 0, level: 7, cool_time: 5, attack_type: '遠隔')
Skill.create(pokemon_id: 18, button: 0, name: 'なみのり', image: 'greninja_skill_2.png', attack_category: 0, level: 7, cool_time: 9, attack_type: '近接')
Skill.create(pokemon_id: 18, button: 1, name: 'かげぶんしん', image: 'greninja_skill_3.png', attack_category: 2, level: 5, cool_time: 9, attack_type: 'ムーブ')
Skill.create(pokemon_id: 18, button: 1, name: 'えんまく', image: 'greninja_skill_4.png', attack_category: 2, level: 5, cool_time: 13, attack_type: 'ムーブ')
Skill.create(pokemon_id: 19, button: 0, name: 'ニトロチャージ', image: 'talonflame_skill_1.png', attack_category: 0, level: 5, cool_time: 6.5, attack_type: 'ムーブ')
Skill.create(pokemon_id: 19, button: 0, name: 'つばめがえし', image: 'talonflame_skill_2.png', attack_category: 0, level: 5, cool_time: 6, attack_type: 'ムーブ')
Skill.create(pokemon_id: 19, button: 1, name: 'そらをとぶ', image: 'talonflame_skill_3.png', attack_category: 0, level: 7, cool_time: 11, attack_type: 'ムーブ')
Skill.create(pokemon_id: 19, button: 1, name: 'ブレイブバード', image: 'talonflame_skill_4.png', attack_category: 0, level: 7, cool_time: 10, attack_type: 'ムーブ')
Skill.create(pokemon_id: 20, button: 0, name: 'ボルトチェンジ', image: 'zeraora_skill_1.png', attack_category: 0, level: 6, cool_time: 8, attack_type: 'ムーブ')
Skill.create(pokemon_id: 20, button: 0, name: 'スパーク', image: 'zeraora_skill_2.png', attack_category: 0, level: 6, cool_time: 10, attack_type: 'ムーブ')
Skill.create(pokemon_id: 20, button: 1, name: 'ほうでん', image: 'zeraora_skill_3.png', attack_category: 0, level: 8, cool_time: 12, attack_type: '範囲')
Skill.create(pokemon_id: 20, button: 1, name: 'ワイルドボルト', image: 'zeraora_skill_4.png', attack_category: 0, level: 8, cool_time: 11, attack_type: '近接')
Skill.create(pokemon_id: 21, button: 0, name: 'かえんボール', image: 'cinderace_skill_1.png', attack_category: 0, level: 7, cool_time: 7, attack_type: '遠隔')
Skill.create(pokemon_id: 21, button: 0, name: 'ブレイズキック', image: 'cinderace_skill_2.png', attack_category: 0, level: 7, cool_time: 8, attack_type: '必中')
Skill.create(pokemon_id: 21, button: 1, name: 'ニトロチャージ', image: 'cinderace_skill_3.png', attack_category: 0, level: 8, cool_time: 6, attack_type: 'ムーブ')
Skill.create(pokemon_id: 21, button: 1, name: 'フェイント', image: 'cinderace_skill_4.png', attack_category: 2, level: 8, cool_time: 13, attack_type: '能力上昇')
Skill.create(pokemon_id: 22, button: 0, name: 'かふんだんご', image: 'eldegoss_skill_1.png', attack_category: 1, level: 4, cool_time: 6, attack_type: '遠隔')
Skill.create(pokemon_id: 22, button: 0, name: 'グラスミキサー', image: 'eldegoss_skill_2.png', attack_category: 1, level: 4, cool_time: 9, attack_type: '遠隔')
Skill.create(pokemon_id: 22, button: 1, name: 'コットンガード', image: 'eldegoss_skill_3.png', attack_category: 2, level: 6, cool_time: 9, attack_type: '能力上昇')
Skill.create(pokemon_id: 22, button: 1, name: 'わたほうし', image: 'eldegoss_skill_4.png', attack_category: 1, level: 6, cool_time: 7.5, attack_type: '範囲')
Skill.create(pokemon_id: 23, button: 0, name: 'なみのり', image: 'cramorant_skill_1.png', attack_category: 1, level: 6, cool_time: 8, attack_type: '妨害')
Skill.create(pokemon_id: 23, button: 0, name: 'ダイビング', image: 'cramorant_skill_2.png', attack_category: 1, level: 6, cool_time: 1.5, attack_type: 'ムーブ')
Skill.create(pokemon_id: 23, button: 1, name: 'ぼうふう', image: 'cramorant_skill_3.png', attack_category: 1, level: 4, cool_time: 9, attack_type: '遠隔')
Skill.create(pokemon_id: 23, button: 1, name: 'エアスラッシュ', image: 'cramorant_skill_4.png', attack_category: 1, level: 4, cool_time: 5, attack_type: '遠隔')

User.create(name: 'Sylpha', email: 'sylpha.games@gmail.com', password: 'sayumi729864')
