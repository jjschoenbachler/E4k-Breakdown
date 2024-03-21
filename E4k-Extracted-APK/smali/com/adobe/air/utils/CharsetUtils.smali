.class public Lcom/adobe/air/utils/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# static fields
.field public static final EMPTY_BARRAY:[B

.field public static final EMPTY_CARRAY:[C

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/adobe/air/utils/CharsetUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/utils/CharsetUtils;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    new-array v1, v0, [C

    sput-object v1, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_CARRAY:[C

    .line 49
    new-array v0, v0, [B

    sput-object v0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConvertMBCStoUTF16([BLjava/lang/String;)[B
    .locals 0

    .line 110
    :try_start_0
    invoke-static {p0, p1}, Lcom/adobe/air/utils/CharsetUtils;->DecodeBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object p0

    const-string p1, "UTF-16LE"

    .line 112
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 113
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 119
    :catch_0
    sget-object p0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    return-object p0
.end method

.method public static ConvertMBCStoUTF8([BLjava/lang/String;)[B
    .locals 0

    .line 166
    :try_start_0
    invoke-static {p0, p1}, Lcom/adobe/air/utils/CharsetUtils;->DecodeBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object p0

    const-string p1, "UTF-8"

    .line 168
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 175
    :catch_0
    sget-object p0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    return-object p0
.end method

.method public static ConvertUTF16toMBCS([BLjava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-16LE"

    .line 126
    invoke-static {p0, v0}, Lcom/adobe/air/utils/CharsetUtils;->DecodeBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 128
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    .line 130
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 131
    invoke-virtual {p1, p0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 136
    :catch_0
    sget-object p0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    return-object p0
.end method

.method public static ConvertUTF8toMBCS([BLjava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 145
    invoke-static {p0, v0}, Lcom/adobe/air/utils/CharsetUtils;->DecodeBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 147
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    .line 149
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 150
    invoke-virtual {p1, p0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 155
    :catch_0
    sget-object p0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    return-object p0
.end method

.method public static DecodeBuffer([BLjava/lang/String;)Ljava/nio/CharBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 101
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    .line 103
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 104
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static QueryAvailableCharsets()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 184
    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 186
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static mbcsToUtf16([B)[C
    .locals 1

    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 75
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 78
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    .line 86
    sget-object p0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_CARRAY:[C

    return-object p0

    :cond_0
    return-object p0

    .line 82
    :catch_0
    sget-object p0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_CARRAY:[C

    return-object p0
.end method

.method public static mbcsToUtf8([B)[B
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/adobe/air/utils/CharsetUtils;->mbcsToUtf16([B)[C

    move-result-object p0

    .line 93
    invoke-static {p0}, Lcom/adobe/air/utils/CharsetUtils;->utf16ToUtf8([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static utf16ToUtf8([C)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 55
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 58
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    .line 66
    sget-object p0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    return-object p0

    :cond_0
    return-object p0

    .line 62
    :catch_0
    sget-object p0, Lcom/adobe/air/utils/CharsetUtils;->EMPTY_BARRAY:[B

    return-object p0
.end method
