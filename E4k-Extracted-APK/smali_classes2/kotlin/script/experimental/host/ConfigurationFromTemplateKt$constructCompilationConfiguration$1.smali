.class final Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;
.super Lkotlin/jvm/internal/Lambda;
.source "configurationFromTemplate.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/script/experimental/host/ConfigurationFromTemplateKt;->constructCompilationConfiguration(Lkotlin/script/experimental/annotations/KotlinScript;Lkotlin/script/experimental/host/ScriptingHostConfiguration;Lkotlin/reflect/KClass;Lkotlin/script/experimental/api/KotlinType;Lkotlin/jvm/functions/Function1;)Lkotlin/script/experimental/api/ScriptCompilationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Builder;",
        "Lkotlin/Unit;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Builder;"
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
.field final synthetic $baseClassType:Lkotlin/script/experimental/api/KotlinType;

.field final synthetic $body:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Builder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hostConfiguration:Lkotlin/script/experimental/host/ScriptingHostConfiguration;

.field final synthetic $mainAnnotation:Lkotlin/script/experimental/annotations/KotlinScript;

.field final synthetic $templateClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/KClass;Lkotlin/script/experimental/api/KotlinType;Lkotlin/script/experimental/annotations/KotlinScript;Lkotlin/jvm/functions/Function1;Lkotlin/script/experimental/host/ScriptingHostConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/script/experimental/api/KotlinType;",
            "Lkotlin/script/experimental/annotations/KotlinScript;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Builder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/script/experimental/host/ScriptingHostConfiguration;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->$templateClass:Lkotlin/reflect/KClass;

    iput-object p2, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->$baseClassType:Lkotlin/script/experimental/api/KotlinType;

    iput-object p3, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->$mainAnnotation:Lkotlin/script/experimental/annotations/KotlinScript;

    iput-object p4, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->$body:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->$hostConfiguration:Lkotlin/script/experimental/host/ScriptingHostConfiguration;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p1, Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Builder;

    invoke-virtual {p0, p1}, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->invoke(Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Builder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Builder;)V
    .locals 3
    .param p1    # Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    move-object v0, p1

    check-cast v0, Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;

    invoke-static {v0}, Lkotlin/script/experimental/api/ScriptCompilationKt;->getHostConfiguration(Lkotlin/script/experimental/api/ScriptCompilationConfigurationKeys;)Lkotlin/script/experimental/util/PropertiesCollection$Key;

    move-result-object v0

    new-instance v1, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1$1;

    iget-object v2, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->$hostConfiguration:Lkotlin/script/experimental/host/ScriptingHostConfiguration;

    invoke-direct {v1, v2}, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1$1;-><init>(Lkotlin/script/experimental/host/ScriptingHostConfiguration;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0, v1}, Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Builder;->update(Lkotlin/script/experimental/util/PropertiesCollection$Key;Lkotlin/jvm/functions/Function1;)V

    .line 112
    iget-object v0, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->$templateClass:Lkotlin/reflect/KClass;

    iget-object v1, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->$baseClassType:Lkotlin/script/experimental/api/KotlinType;

    iget-object v2, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->$mainAnnotation:Lkotlin/script/experimental/annotations/KotlinScript;

    invoke-static {p1, v0, v1, v2}, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt;->access$propertiesFromTemplate(Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Builder;Lkotlin/reflect/KClass;Lkotlin/script/experimental/api/KotlinType;Lkotlin/script/experimental/annotations/KotlinScript;)V

    .line 113
    iget-object v0, p0, Lkotlin/script/experimental/host/ConfigurationFromTemplateKt$constructCompilationConfiguration$1;->$body:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
