.class public Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder;
.super Lkotlin/script/experimental/util/PropertiesCollection$Builder;
.source "scriptIdeConfiguration.kt"

# interfaces
.implements Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00042\u00020\u00012\u00020\u0002:\u0001\u0004B\u0005\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder;",
        "Lkotlin/script/experimental/util/PropertiesCollection$Builder;",
        "Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationKeys;",
        "()V",
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
.field public static final Companion:Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder;->Companion:Lkotlin/script/experimental/api/IdeScriptCompilationConfigurationBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, v0, v1, v0}, Lkotlin/script/experimental/util/PropertiesCollection$Builder;-><init>(Ljava/lang/Iterable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
