import UIKit

//버킷 사이즈 설정
var hashTable = HashTable<String, Any>(bucketSize: 13)

//삽입
hashTable["foma"] = "foma"
hashTable["gran"] = "gran"

//충돌(foma와 mofa는 digitfolding에 의해 똑같은 인덱스가 나옵니다.)
hashTable["mofa"] = "mofa"

print(hashTable["foma"],hashTable["gran"],hashTable["mofa"],hashTable["fomagran"])

//삭제
hashTable["foma"] = nil

//업데이트
hashTable["gran"] = "foma"

print(hashTable["foma"],hashTable["gran"],hashTable["mofa"],hashTable["fomagran"])
