THRIFT_FILES := $(shell find thrift -name "*.thrift")
GEN_FILES := $(THRIFT_FILES:%.thrift=%.js)

thift: $(GEN_FILES)

thrift/%.js: thrift/%.thrift
	thrift --gen js:node -out thrift $<

all: thrift

clean:
	rm -rf $(GEN_FILES)

.PHONY: thrift
