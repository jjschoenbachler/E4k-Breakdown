.class public final Lkotlin/script/experimental/util/PropertiesCollectionKt;
.super Ljava/lang/Object;
.source "propertiesCollection.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a#\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0004\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "getOrError",
        "T",
        "Lkotlin/script/experimental/util/PropertiesCollection;",
        "key",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "(Lkotlin/script/experimental/util/PropertiesCollection;Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;",
        "kotlin-scripting-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getOrError(Lkotlin/script/experimental/util/PropertiesCollection;Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lkotlin/script/experimental/util/PropertiesCollection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection;->get(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown key "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
