.class final Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey$1;
.super Lkotlin/jvm/internal/Lambda;
.source "propertiesCollection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey;-><init>(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/script/experimental/util/PropertiesCollection;",
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
        "\u0000\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Lkotlin/script/experimental/util/PropertiesCollection;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $getSourceProperties:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $source:Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/script/experimental/util/PropertiesCollection$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            "+",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            ">;",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey$1;->$getSourceProperties:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey$1;->$source:Lkotlin/script/experimental/util/PropertiesCollection$Key;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lkotlin/script/experimental/util/PropertiesCollection;

    invoke-virtual {p0, p1}, Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey$1;->invoke(Lkotlin/script/experimental/util/PropertiesCollection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/script/experimental/util/PropertiesCollection;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/script/experimental/util/PropertiesCollection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey$1;->$getSourceProperties:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/script/experimental/util/PropertiesCollection;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey$1;->$source:Lkotlin/script/experimental/util/PropertiesCollection$Key;

    invoke-virtual {v0}, Lkotlin/script/experimental/util/PropertiesCollection$Key;->getGetDefaultValue()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey$1;->$source:Lkotlin/script/experimental/util/PropertiesCollection$Key;

    invoke-virtual {v0, p1}, Lkotlin/script/experimental/util/PropertiesCollection;->get(Lkotlin/script/experimental/util/PropertiesCollection$Key;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
