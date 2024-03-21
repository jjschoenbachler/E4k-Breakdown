.class public final Lkotlin/script/experimental/api/ScriptSourceAnnotation;
.super Ljava/lang/Object;
.source "scriptData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u00022\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\r\u001a\u00028\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J*\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00028\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0013\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ScriptSourceAnnotation;",
        "A",
        "",
        "",
        "annotation",
        "location",
        "Lkotlin/script/experimental/api/SourceCode$LocationWithId;",
        "(Ljava/lang/annotation/Annotation;Lkotlin/script/experimental/api/SourceCode$LocationWithId;)V",
        "getAnnotation",
        "()Ljava/lang/annotation/Annotation;",
        "Ljava/lang/annotation/Annotation;",
        "getLocation",
        "()Lkotlin/script/experimental/api/SourceCode$LocationWithId;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/annotation/Annotation;Lkotlin/script/experimental/api/SourceCode$LocationWithId;)Lkotlin/script/experimental/api/ScriptSourceAnnotation;",
        "equals",
        "",
        "other",
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
.field private final annotation:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final location:Lkotlin/script/experimental/api/SourceCode$LocationWithId;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;Lkotlin/script/experimental/api/SourceCode$LocationWithId;)V
    .locals 1
    .param p1    # Ljava/lang/annotation/Annotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/SourceCode$LocationWithId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lkotlin/script/experimental/api/SourceCode$LocationWithId;",
            ")V"
        }
    .end annotation

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    .line 75
    iput-object p2, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->location:Lkotlin/script/experimental/api/SourceCode$LocationWithId;

    return-void
.end method

.method public static synthetic copy$default(Lkotlin/script/experimental/api/ScriptSourceAnnotation;Ljava/lang/annotation/Annotation;Lkotlin/script/experimental/api/SourceCode$LocationWithId;ILjava/lang/Object;)Lkotlin/script/experimental/api/ScriptSourceAnnotation;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->location:Lkotlin/script/experimental/api/SourceCode$LocationWithId;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->copy(Ljava/lang/annotation/Annotation;Lkotlin/script/experimental/api/SourceCode$LocationWithId;)Lkotlin/script/experimental/api/ScriptSourceAnnotation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public final component2()Lkotlin/script/experimental/api/SourceCode$LocationWithId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->location:Lkotlin/script/experimental/api/SourceCode$LocationWithId;

    return-object v0
.end method

.method public final copy(Ljava/lang/annotation/Annotation;Lkotlin/script/experimental/api/SourceCode$LocationWithId;)Lkotlin/script/experimental/api/ScriptSourceAnnotation;
    .locals 1
    .param p1    # Ljava/lang/annotation/Annotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/script/experimental/api/SourceCode$LocationWithId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lkotlin/script/experimental/api/SourceCode$LocationWithId;",
            ")",
            "Lkotlin/script/experimental/api/ScriptSourceAnnotation<",
            "TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;

    invoke-direct {v0, p1, p2}, Lkotlin/script/experimental/api/ScriptSourceAnnotation;-><init>(Ljava/lang/annotation/Annotation;Lkotlin/script/experimental/api/SourceCode$LocationWithId;)V

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
    instance-of v1, p1, Lkotlin/script/experimental/api/ScriptSourceAnnotation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkotlin/script/experimental/api/ScriptSourceAnnotation;

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    iget-object v3, p1, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->location:Lkotlin/script/experimental/api/SourceCode$LocationWithId;

    iget-object p1, p1, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->location:Lkotlin/script/experimental/api/SourceCode$LocationWithId;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 70
    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public final getLocation()Lkotlin/script/experimental/api/SourceCode$LocationWithId;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 75
    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->location:Lkotlin/script/experimental/api/SourceCode$LocationWithId;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->location:Lkotlin/script/experimental/api/SourceCode$LocationWithId;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->location:Lkotlin/script/experimental/api/SourceCode$LocationWithId;

    invoke-virtual {v1}, Lkotlin/script/experimental/api/SourceCode$LocationWithId;->hashCode()I

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

    const-string v1, "ScriptSourceAnnotation(annotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->annotation:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/script/experimental/api/ScriptSourceAnnotation;->location:Lkotlin/script/experimental/api/SourceCode$LocationWithId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
