.class public final Lkotlin/script/experimental/api/SourceCode$Location;
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
    name = "Location"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u001f\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlin/script/experimental/api/SourceCode$Location;",
        "Ljava/io/Serializable;",
        "start",
        "Lkotlin/script/experimental/api/SourceCode$Position;",
        "end",
        "(Lkotlin/script/experimental/api/SourceCode$Position;Lkotlin/script/experimental/api/SourceCode$Position;)V",
        "getEnd",
        "()Lkotlin/script/experimental/api/SourceCode$Position;",
        "getStart",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final end:Lkotlin/script/experimental/api/SourceCode$Position;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final start:Lkotlin/script/experimental/api/SourceCode$Position;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/script/experimental/api/SourceCode$Position;Lkotlin/script/experimental/api/SourceCode$Position;)V
    .locals 1
    .param p1    # Lkotlin/script/experimental/api/SourceCode$Position;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/SourceCode$Position;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/script/experimental/api/SourceCode$Location;->start:Lkotlin/script/experimental/api/SourceCode$Position;

    iput-object p2, p0, Lkotlin/script/experimental/api/SourceCode$Location;->end:Lkotlin/script/experimental/api/SourceCode$Position;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/script/experimental/api/SourceCode$Position;Lkotlin/script/experimental/api/SourceCode$Position;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 53
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/script/experimental/api/SourceCode$Location;-><init>(Lkotlin/script/experimental/api/SourceCode$Position;Lkotlin/script/experimental/api/SourceCode$Position;)V

    return-void
.end method

.method public static synthetic copy$default(Lkotlin/script/experimental/api/SourceCode$Location;Lkotlin/script/experimental/api/SourceCode$Position;Lkotlin/script/experimental/api/SourceCode$Position;ILjava/lang/Object;)Lkotlin/script/experimental/api/SourceCode$Location;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lkotlin/script/experimental/api/SourceCode$Location;->start:Lkotlin/script/experimental/api/SourceCode$Position;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lkotlin/script/experimental/api/SourceCode$Location;->end:Lkotlin/script/experimental/api/SourceCode$Position;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/api/SourceCode$Location;->copy(Lkotlin/script/experimental/api/SourceCode$Position;Lkotlin/script/experimental/api/SourceCode$Position;)Lkotlin/script/experimental/api/SourceCode$Location;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lkotlin/script/experimental/api/SourceCode$Position;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/SourceCode$Location;->start:Lkotlin/script/experimental/api/SourceCode$Position;

    return-object v0
.end method

.method public final component2()Lkotlin/script/experimental/api/SourceCode$Position;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/SourceCode$Location;->end:Lkotlin/script/experimental/api/SourceCode$Position;

    return-object v0
.end method

.method public final copy(Lkotlin/script/experimental/api/SourceCode$Position;Lkotlin/script/experimental/api/SourceCode$Position;)Lkotlin/script/experimental/api/SourceCode$Location;
    .locals 1
    .param p1    # Lkotlin/script/experimental/api/SourceCode$Position;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/SourceCode$Position;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/script/experimental/api/SourceCode$Location;

    invoke-direct {v0, p1, p2}, Lkotlin/script/experimental/api/SourceCode$Location;-><init>(Lkotlin/script/experimental/api/SourceCode$Position;Lkotlin/script/experimental/api/SourceCode$Position;)V

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
    instance-of v1, p1, Lkotlin/script/experimental/api/SourceCode$Location;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/experimental/api/SourceCode$Location;

    iget-object v1, p0, Lkotlin/script/experimental/api/SourceCode$Location;->start:Lkotlin/script/experimental/api/SourceCode$Position;

    iget-object v3, p1, Lkotlin/script/experimental/api/SourceCode$Location;->start:Lkotlin/script/experimental/api/SourceCode$Position;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lkotlin/script/experimental/api/SourceCode$Location;->end:Lkotlin/script/experimental/api/SourceCode$Position;

    iget-object p1, p1, Lkotlin/script/experimental/api/SourceCode$Location;->end:Lkotlin/script/experimental/api/SourceCode$Position;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEnd()Lkotlin/script/experimental/api/SourceCode$Position;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 53
    iget-object v0, p0, Lkotlin/script/experimental/api/SourceCode$Location;->end:Lkotlin/script/experimental/api/SourceCode$Position;

    return-object v0
.end method

.method public final getStart()Lkotlin/script/experimental/api/SourceCode$Position;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lkotlin/script/experimental/api/SourceCode$Location;->start:Lkotlin/script/experimental/api/SourceCode$Position;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lkotlin/script/experimental/api/SourceCode$Location;->start:Lkotlin/script/experimental/api/SourceCode$Position;

    invoke-virtual {v0}, Lkotlin/script/experimental/api/SourceCode$Position;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/SourceCode$Location;->end:Lkotlin/script/experimental/api/SourceCode$Position;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlin/script/experimental/api/SourceCode$Location;->end:Lkotlin/script/experimental/api/SourceCode$Position;

    invoke-virtual {v1}, Lkotlin/script/experimental/api/SourceCode$Position;->hashCode()I

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

    const-string v1, "Location(start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/SourceCode$Location;->start:Lkotlin/script/experimental/api/SourceCode$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/SourceCode$Location;->end:Lkotlin/script/experimental/api/SourceCode$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method