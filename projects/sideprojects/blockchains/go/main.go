package main

import (
"fmt"
)

type Block struct{
	Timestamp int64
	data []byte
	PrevblockHash []byte
	Hash []byte
}

func (b *Block) SetHash() {
	timestamp := []byte(strconv.FormatInt(b.Timestamp,10))
	header := bytes.Join([][]byte{b.PrevBlockHash, b.Data, timestamp}, []byte{})
	hash := sha256.Sum256(headers)

	b.Hash = hash[:]
}


func main() {

}
