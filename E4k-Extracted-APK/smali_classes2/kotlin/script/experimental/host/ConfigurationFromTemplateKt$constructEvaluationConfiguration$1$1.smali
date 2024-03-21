.class final Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructEvaluationConfiguration$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "configurationFromTemplate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructEvaluationConfiguration$1;->invoke(Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/script/experimental/host/ScriptingHostConfiguration;",
        "Lkotlin/script/experimental/host/ScriptingHostConfiguration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/script/experimental/host/ScriptingHostConfiguration;",
        "it"
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
.field final synthetic $hostConfiguration:Lkotlin/script/experimental/host/ScriptingHostConfiguration;


# direct methods
.method constructor <init>(Lkotlin/script/experimental/host/ScriptingHostConfiguration;)V
    .locals 0

    iput-object p1, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructEvaluationConfiguration$1$1;->$hostConfiguration:Lkotlin/script/experimental/host/ScriptingHostConfiguration;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p1, Lkotlin/script/experimental/host/ScriptingHostConfiguration;

    invoke-virtual {p0, p1}, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructEvaluationConfiguration$1$1;->invoke(Lkotlin/script/experimental/host/ScriptingHostConfiguration;)Lkotlin/script/experimental/host/ScriptingHostConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/script/experimental/host/ScriptingHostConfiguration;)Lkotlin/script/experimental/host/ScriptingHostConfiguration;
    .locals 1
    .param p1    # Lkotlin/script/experimental/host/ScriptingHostConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 127
    iget-object v0, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructEvaluationConfiguration$1$1;->$hostConfiguration:Lkotlin/script/experimental/host/ScriptingHostConfiguration;

    invoke-static {p1, v0}, Lkotlin/script/experimental/host/HostConfigurationKt;->withDefaultsFrom(Lkotlin/script/experimental/host/ScriptingHostConfiguration;Lkotlin/script/experimental/host/ScriptingHostConfiguration;)Lkotlin/script/experimental/host/ScriptingHostConfiguration;

    move-result-object p1

    return-object p1
.end method
