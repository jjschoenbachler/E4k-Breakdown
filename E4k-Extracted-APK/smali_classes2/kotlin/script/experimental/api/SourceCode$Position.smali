.class public final Lkotlin/script/experimental/api/SourceCode$Position;
.super Ljava/lang/Object;
.source "scriptData.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/api/SourceCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Position"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J.\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/script/experimental/api/SourceCode$Position;",
        "Ljava/io/Serializable;",
        "line",
        "",
        "col",
        "absolutePos",
        "(IILjava/lang/Integer;)V",
        "getAbsolutePos",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getCol",
        "()I",
        "getLine",
        "component1",
        "component2",
        "component3",
        "copy",
        "(IILjava/lang/Integer;)Lkotlin/script/experimental/api/SourceCode$Position;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private final absolutePos:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final col:I

.field private final line:I


# direct methods
.method public constructor <init>(IILjava/lang/Integer;)V
    .locals 0
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->line:I

    iput p2, p0, Lkotlin/script/experimental/api/SourceCode$Position;->col:I

    iput-object p3, p0, Lkotlin/script/experimental/api/SourceCode$Position;->absolutePos:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 39
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlin/script/experimental/api/SourceCode$Position;-><init>(IILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lkotlin/script/experimental/api/SourceCode$Position;IILjava/lang/Integer;ILjava/lang/Object;)Lkotlin/script/experimental/api/SourceCode$Position;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->line:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lkotlin/script/experimental/api/SourceCode$Position;->col:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lkotlin/script/experimental/api/SourceCode$Position;->absolutePos:Ljava/lang/Integer;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/script/experimental/api/SourceCode$Position;->copy(IILjava/lang/Integer;)Lkotlin/script/experimental/api/SourceCode$Position;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lkotlin/script/experimental/api/SourceCode$Position;->line:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lkotlin/script/experimental/api/SourceCode$Position;->col:I

    return v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/SourceCode$Position;->absolutePos:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(IILjava/lang/Integer;)Lkotlin/script/experimental/api/SourceCode$Position;
    .locals 1
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlin/script/experimental/api/SourceCode$Position;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/script/experimental/api/SourceCode$Position;-><init>(IILjava/lang/Integer;)V

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
    instance-of v1, p1, Lkotlin/script/experimental/api/SourceCode$Position;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/experimental/api/SourceCode$Position;

    iget v1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->line:I

    iget v3, p1, Lkotlin/script/experimental/api/SourceCode$Position;->line:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->col:I

    iget v3, p1, Lkotlin/script/experimental/api/SourceCode$Position;->col:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->absolutePos:Ljava/lang/Integer;

    iget-object p1, p1, Lkotlin/script/experimental/api/SourceCode$Position;->absolutePos:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAbsolutePos()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 39
    iget-object v0, p0, Lkotlin/script/experimental/api/SourceCode$Position;->absolutePos:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCol()I
    .locals 1

    .line 39
    iget v0, p0, Lkotlin/script/experimental/api/SourceCode$Position;->col:I

    return v0
.end method

.method public final getLine()I
    .locals 1

    .line 39
    iget v0, p0, Lkotlin/script/experimental/api/SourceCode$Position;->line:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lkotlin/script/experimental/api/SourceCode$Position;->line:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->col:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->absolutePos:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->absolutePos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Position(line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->col:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", absolutePos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/SourceCode$Position;->absolutePos:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
