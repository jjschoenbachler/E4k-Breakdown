.class public final Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;
.super Ljava/lang/Object;
.source "propertiesCollection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/util/PropertiesCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertyKeyDelegate"
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
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u001b\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B*\u0012\u0019\u0010\u0007\u001a\u0015\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0008\u00a2\u0006\u0002\u0008\n\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000bJ%\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u0011H\u0086\u0002R!\u0010\u0007\u001a\u0015\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0008\u00a2\u0006\u0002\u0008\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;",
        "T",
        "",
        "defaultValue",
        "isTransient",
        "",
        "(Ljava/lang/Object;Z)V",
        "getDefaultValue",
        "Lkotlin/Function1;",
        "Lkotlin/script/experimental/util/PropertiesCollection;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;Z)V",
        "()Z",
        "getValue",
        "Lkotlin/script/experimental/util/PropertiesCollection$Key;",
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
.field private final getDefaultValue:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isTransient:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 53
    new-instance v0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate$1;

    invoke-direct {v0, p1}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, p2}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 53
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Z)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/util/PropertiesCollection;",
            "+TT;>;Z)V"
        }
    .end annotation

    const-string v0, "getDefaultValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getDefaultValue:Lkotlin/jvm/functions/Function1;

    iput-boolean p2, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->isTransient:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 52
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method


# virtual methods
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

    .line 56
    iget-boolean p1, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->isTransient:Z

    if-eqz p1, :cond_0

    new-instance p1, Lkotlin/script/experimental/util/PropertiesCollection$TransientKey;

    invoke-interface {p2}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getDefaultValue:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, p2, v0}, Lkotlin/script/experimental/util/PropertiesCollection$TransientKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lkotlin/script/experimental/util/PropertiesCollection$Key;

    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Lkotlin/script/experimental/util/PropertiesCollection$Key;

    invoke-interface {p2}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->getDefaultValue:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, p2, v0}, Lkotlin/script/experimental/util/PropertiesCollection$Key;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-object p1
.end method

.method public final isTransient()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lkotlin/script/experimental/util/PropertiesCollection$PropertyKeyDelegate;->isTransient:Z

    return v0
.end method
