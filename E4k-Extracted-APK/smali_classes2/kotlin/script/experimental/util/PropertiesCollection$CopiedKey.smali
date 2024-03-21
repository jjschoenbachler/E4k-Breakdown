.class public final Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey;
.super Lkotlin/script/experimental/util/PropertiesCollection$Key;
.source "propertiesCollection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/util/PropertiesCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CopiedKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B.\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0019\u0010\u0004\u001a\u0015\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey;",
        "T",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "source",
        "getSourceProperties",
        "Lkotlin/Function1;",
        "Lkotlin/script/experimental/util/PropertiesCollection;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)V",
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


# direct methods
.method public constructor <init>(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            "+",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getSourceProperties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lkotlin/script/experimental/util/PropertiesCollection$Key;->getName()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey$1;

    invoke-direct {v1, p2, p1}, Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/script/experimental/util/PropertiesCollection$Key;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 43
    invoke-direct {p0, v0, v1}, Lkotlin/script/experimental/util/PropertiesCollection$Key;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
