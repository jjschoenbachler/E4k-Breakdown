.class public final Lkotlin/script/experimental/api/ReplSnippetIdImpl;
.super Ljava/lang/Object;
.source "replData.kt"

# interfaces
.implements Lkotlin/script/experimental/api/ReplSnippetId;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/api/ReplSnippetIdImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nreplData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 replData.kt\nkotlin/script/experimental/api/ReplSnippetIdImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1#2:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001a2\u00020\u00012\u00020\u0002:\u0001\u001aB\u001f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\nJ\u0011\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0001H\u0096\u0002J\t\u0010\u0010\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0004H\u00c2\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ReplSnippetIdImpl;",
        "Lkotlin/script/experimental/api/ReplSnippetId;",
        "Ljava/io/Serializable;",
        "no",
        "",
        "generation",
        "code",
        "Lkotlin/script/experimental/api/SourceCode;",
        "(IILkotlin/script/experimental/api/SourceCode;)V",
        "codeHash",
        "(III)V",
        "getGeneration",
        "()I",
        "getNo",
        "compareTo",
        "other",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "",
        "Companion",
        "kotlin-scripting-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lkotlin/script/experimental/api/ReplSnippetIdImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final codeHash:I

.field private final generation:I

.field private final no:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/script/experimental/api/ReplSnippetIdImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/script/experimental/api/ReplSnippetIdImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->Companion:Lkotlin/script/experimental/api/ReplSnippetIdImpl$Companion;

    const-wide/16 v0, 0x1

    .line 31
    sput-wide v0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->serialVersionUID:J

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->no:I

    iput p2, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->generation:I

    iput p3, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->codeHash:I

    return-void
.end method

.method public constructor <init>(IILkotlin/script/experimental/api/SourceCode;)V
    .locals 1
    .param p3    # Lkotlin/script/experimental/api/SourceCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "code"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p3}, Lkotlin/script/experimental/api/SourceCode;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lkotlin/script/experimental/api/ReplSnippetIdImpl;-><init>(III)V

    return-void
.end method

.method private final component3()I
    .locals 1

    iget v0, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->codeHash:I

    return v0
.end method

.method public static synthetic copy$default(Lkotlin/script/experimental/api/ReplSnippetIdImpl;IIIILjava/lang/Object;)Lkotlin/script/experimental/api/ReplSnippetIdImpl;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->no:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->generation:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->codeHash:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->copy(III)Lkotlin/script/experimental/api/ReplSnippetIdImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lkotlin/script/experimental/api/ReplSnippetId;

    invoke-virtual {p0, p1}, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->compareTo(Lkotlin/script/experimental/api/ReplSnippetId;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lkotlin/script/experimental/api/ReplSnippetId;)I
    .locals 5
    .param p1    # Lkotlin/script/experimental/api/ReplSnippetId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p1, Lkotlin/script/experimental/api/ReplSnippetIdImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/script/experimental/api/ReplSnippetIdImpl;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_4

    .line 25
    :cond_1
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->getNo()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->getNo()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_6

    .line 26
    invoke-virtual {p0}, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->getGeneration()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->getGeneration()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_6

    .line 27
    iget v0, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->codeHash:I

    iget p1, p1, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->codeHash:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_4
    return p1
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->no:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->generation:I

    return v0
.end method

.method public final copy(III)Lkotlin/script/experimental/api/ReplSnippetIdImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/script/experimental/api/ReplSnippetIdImpl;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkotlin/script/experimental/api/ReplSnippetIdImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/experimental/api/ReplSnippetIdImpl;

    iget v1, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->no:I

    iget v3, p1, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->no:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->generation:I

    iget v3, p1, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->generation:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->codeHash:I

    iget p1, p1, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->codeHash:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getGeneration()I
    .locals 1

    .line 20
    iget v0, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->generation:I

    return v0
.end method

.method public getNo()I
    .locals 1

    .line 20
    iget v0, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->no:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->no:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->generation:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->codeHash:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplSnippetIdImpl(no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->no:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->generation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", codeHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/script/experimental/api/ReplSnippetIdImpl;->codeHash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
