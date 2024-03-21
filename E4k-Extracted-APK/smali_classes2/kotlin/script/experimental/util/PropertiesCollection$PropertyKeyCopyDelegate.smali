.class public final Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;
.super Ljava/lang/Object;
.source "propertiesCollection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/util/PropertiesCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertyKeyCopyDelegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B0\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u001b\u0008\u0002\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0002\u0010\tJ%\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0011H\u0086\u0002R$\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;",
        "T",
        "",
        "source",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "getSourceProperties",
        "Lkotlin/Function1;",
        "Lkotlin/script/experimental/util/PropertiesCollection;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)V",
        "getGetSourceProperties",
        "()Lkotlin/jvm/functions/Function1;",
        "getSource",
        "()Lkotlin/script/experimental/util/PropertiesCollection$Key;",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
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
.field private final getSourceProperties:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final source:Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;->source:Lkotlin/script/experimental/util/PropertiesCollection$Key;

    iput-object p2, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;->getSourceProperties:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 61
    sget-object p2, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate$1;->INSTANCE:Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;-><init>(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getGetSourceProperties()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;->getSourceProperties:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSource()Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;->source:Lkotlin/script/experimental/util/PropertiesCollection$Key;

    return-object v0
.end method

.method public final getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lkotlin/script/experimental/util/PropertiesCollection$Key;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Lkotlin/script/experimental/util/PropertiesCollection$Key<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance p1, Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey;

    iget-object p2, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;->source:Lkotlin/script/experimental/util/PropertiesCollection$Key;

    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyCopyDelegate;->getSourceProperties:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, p2, v0}, Lkotlin/script/experimental/util/PropertiesCollection$CopiedKey;-><init>(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lkotlin/script/experimental/util/PropertiesCollection$Key;

    return-object p1
.end method
