.class Lcom/bugsnag/android/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/JsonWriter$JsonScope;
    }
.end annotation


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bugsnag/android/JsonWriter$JsonScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x80

    .line 192
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 194
    sget-object v2, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    .line 197
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    .line 198
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    .line 199
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    .line 200
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    .line 201
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    .line 202
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    .line 203
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 204
    sput-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    .line 205
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    .line 206
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    .line 207
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    .line 208
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    .line 216
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, ":"

    .line 228
    iput-object v0, p0, Lcom/bugsnag/android/JsonWriter;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/bugsnag/android/JsonWriter;->serializeNulls:Z

    if-eqz p1, :cond_0

    .line 247
    iput-object p1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    return-void

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private beforeValue(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    sget-object v0, Lcom/bugsnag/android/JsonWriter$1;->$SwitchMap$com$bugsnag$android$JsonWriter$JsonScope:[I

    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->peek()Lcom/bugsnag/android/JsonWriter$JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/JsonWriter$JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 669
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Nesting problem: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 664
    :pswitch_0
    iget-object p1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 665
    sget-object p1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-direct {p0, p1}, Lcom/bugsnag/android/JsonWriter;->replaceTop(Lcom/bugsnag/android/JsonWriter$JsonScope;)V

    return-void

    .line 659
    :pswitch_1
    iget-object p1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    return-void

    .line 654
    :pswitch_2
    sget-object p1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-direct {p0, p1}, Lcom/bugsnag/android/JsonWriter;->replaceTop(Lcom/bugsnag/android/JsonWriter$JsonScope;)V

    return-void

    :pswitch_3
    if-eqz p1, :cond_0

    .line 650
    sget-object p1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-direct {p0, p1}, Lcom/bugsnag/android/JsonWriter;->replaceTop(Lcom/bugsnag/android/JsonWriter$JsonScope;)V

    return-void

    .line 647
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must start with an array or an object."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 640
    :pswitch_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JSON must have only one top-level value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private close(Lcom/bugsnag/android/JsonWriter$JsonScope;Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->peek()Lcom/bugsnag/android/JsonWriter$JsonScope;

    move-result-object v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Nesting problem: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 387
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 391
    iget-object p1, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 395
    iget-object p1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    .line 388
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Dangling name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private open(Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 371
    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 372
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object p1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private peek()Lcom/bugsnag/android/JsonWriter$JsonScope;
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/JsonWriter$JsonScope;

    return-object v0

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private replaceTop(Lcom/bugsnag/android/JsonWriter$JsonScope;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/bugsnag/android/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 572
    iget-object v1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 576
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    .line 579
    aget-object v4, v0, v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_0
    const/16 v5, 0x2028

    if-ne v4, v5, :cond_1

    const-string v4, "\\u2028"

    goto :goto_1

    :cond_1
    const/16 v5, 0x2029

    if-ne v4, v5, :cond_4

    const-string v4, "\\u2029"

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    .line 591
    iget-object v5, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    sub-int v6, v2, v3

    invoke-virtual {v5, p1, v3, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 593
    :cond_3
    iget-object v3, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-ge v3, v1, :cond_6

    .line 597
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    sub-int/2addr v1, v3

    invoke-virtual {v0, p1, v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 599
    :cond_6
    iget-object p1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeDeferredName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 439
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->peek()Lcom/bugsnag/android/JsonWriter$JsonScope;

    move-result-object v0

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    if-ne v0, v1, :cond_1

    :goto_0
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->DANGLING_NAME:Lcom/bugsnag/android/JsonWriter$JsonScope;

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->replaceTop(Lcom/bugsnag/android/JsonWriter$JsonScope;)V

    .line 440
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->string(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    goto :goto_1

    .line 439
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nesting problem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final beginArray()Lcom/bugsnag/android/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    .line 334
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/JsonWriter;->open(Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final beginObject()Lcom/bugsnag/android/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    .line 354
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/JsonWriter;->open(Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 563
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    .line 564
    iget-object v2, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    sub-int/2addr v0, v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_DOCUMENT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    if-ne v0, v1, :cond_1

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 565
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final endArray()Lcom/bugsnag/android/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_ARRAY:Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/bugsnag/android/JsonWriter;->close(Lcom/bugsnag/android/JsonWriter$JsonScope;Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final endObject()Lcom/bugsnag/android/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/bugsnag/android/JsonWriter$JsonScope;->EMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    sget-object v1, Lcom/bugsnag/android/JsonWriter$JsonScope;->NONEMPTY_OBJECT:Lcom/bugsnag/android/JsonWriter$JsonScope;

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/bugsnag/android/JsonWriter;->close(Lcom/bugsnag/android/JsonWriter$JsonScope;Lcom/bugsnag/android/JsonWriter$JsonScope;Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public name(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 427
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iput-object p1, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    return-object p0

    .line 431
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 425
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final nullValue()Lcom/bugsnag/android/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 468
    iget-boolean v0, p0, Lcom/bugsnag/android/JsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lcom/bugsnag/android/JsonWriter;->deferredName:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 476
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public final value(D)Lcom/bugsnag/android/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 505
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0

    .line 501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final value(J)Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x0

    .line 516
    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 517
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public final value(Ljava/lang/Number;)Lcom/bugsnag/android/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/bugsnag/android/JsonWriter;->nullValue()Lcom/bugsnag/android/JsonWriter;

    move-result-object p1

    return-object p1

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    .line 534
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Infinity"

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 539
    invoke-direct {p0, p1}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 540
    iget-object p1, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0

    .line 537
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/bugsnag/android/JsonWriter;->nullValue()Lcom/bugsnag/android/JsonWriter;

    move-result-object p1

    return-object p1

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x0

    .line 456
    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 457
    invoke-direct {p0, p1}, Lcom/bugsnag/android/JsonWriter;->string(Ljava/lang/String;)V

    return-object p0
.end method

.method public final value(Z)Lcom/bugsnag/android/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    invoke-direct {p0}, Lcom/bugsnag/android/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x0

    .line 487
    invoke-direct {p0, v0}, Lcom/bugsnag/android/JsonWriter;->beforeValue(Z)V

    .line 488
    iget-object v0, p0, Lcom/bugsnag/android/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method
