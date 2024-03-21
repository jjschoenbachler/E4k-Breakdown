.class public Lkotlin/script/experimental/host/UrlScriptSource;
.super Ljava/lang/Object;
.source "scriptHostUtil.kt"

# interfaces
.implements Lkotlin/script/experimental/api/ExternalSourceCode;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/host/UrlScriptSource$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nscriptHostUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 scriptHostUtil.kt\nkotlin/script/experimental/host/UrlScriptSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1#2:123\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00182\u00020\u00012\u00020\u0002:\u0001\u0018B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\t8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/script/experimental/host/UrlScriptSource;",
        "Lkotlin/script/experimental/api/ExternalSourceCode;",
        "Ljava/io/Serializable;",
        "externalLocation",
        "Ljava/net/URL;",
        "(Ljava/net/URL;)V",
        "getExternalLocation",
        "()Ljava/net/URL;",
        "locationId",
        "",
        "getLocationId",
        "()Ljava/lang/String;",
        "name",
        "getName",
        "text",
        "getText",
        "text$delegate",
        "Lkotlin/Lazy;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field public static final Companion:Lkotlin/script/experimental/host/UrlScriptSource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final externalLocation:Ljava/net/URL;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final text$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/script/experimental/host/UrlScriptSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/script/experimental/host/UrlScriptSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/script/experimental/host/UrlScriptSource;->Companion:Lkotlin/script/experimental/host/UrlScriptSource$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "externalLocation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/script/experimental/host/UrlScriptSource;->externalLocation:Ljava/net/URL;

    .line 71
    new-instance p1, Lkotlin/script/experimental/host/UrlScriptSource$text$2;

    invoke-direct {p1, p0}, Lkotlin/script/experimental/host/UrlScriptSource$text$2;-><init>(Lkotlin/script/experimental/host/UrlScriptSource;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/script/experimental/host/UrlScriptSource;->text$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_3

    .line 76
    instance-of v2, p1, Lkotlin/script/experimental/host/UrlScriptSource;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p1, Lkotlin/script/experimental/host/UrlScriptSource;

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lkotlin/script/experimental/host/UrlScriptSource;->getExternalLocation()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/script/experimental/host/UrlScriptSource;->getExternalLocation()Ljava/net/URL;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lkotlin/script/experimental/api/ExternalSourceCode;

    invoke-static {v2}, Lkotlin/script/experimental/host/ScriptHostUtilKt;->access$getTextSafe(Lkotlin/script/experimental/api/ExternalSourceCode;)Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lkotlin/script/experimental/api/ExternalSourceCode;

    invoke-static {p1}, Lkotlin/script/experimental/host/ScriptHostUtilKt;->access$getTextSafe(Lkotlin/script/experimental/api/ExternalSourceCode;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public getExternalLocation()Ljava/net/URL;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 70
    iget-object v0, p0, Lkotlin/script/experimental/host/UrlScriptSource;->externalLocation:Ljava/net/URL;

    return-object v0
.end method

.method public getLocationId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 73
    invoke-virtual {p0}, Lkotlin/script/experimental/host/UrlScriptSource;->getExternalLocation()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lkotlin/script/experimental/host/UrlScriptSource;->getExternalLocation()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 71
    iget-object v0, p0, Lkotlin/script/experimental/host/UrlScriptSource;->text$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 78
    invoke-virtual {p0}, Lkotlin/script/experimental/host/UrlScriptSource;->getExternalLocation()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    move-object v1, p0

    check-cast v1, Lkotlin/script/experimental/api/ExternalSourceCode;

    invoke-static {v1}, Lkotlin/script/experimental/host/ScriptHostUtilKt;->access$getTextSafe(Lkotlin/script/experimental/api/ExternalSourceCode;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0
.end method
