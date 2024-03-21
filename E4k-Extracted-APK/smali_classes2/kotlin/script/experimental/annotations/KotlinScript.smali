.class public interface abstract annotation Lkotlin/script/experimental/annotations/KotlinScript;
.super Ljava/lang/Object;
.source "scriptAnnotations.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lkotlin/script/experimental/annotations/KotlinScript;
        compilationConfiguration = Lkotlin/script/experimental/api/ScriptCompilationConfiguration$Default;
        displayName = ""
        evaluationConfiguration = Lkotlin/script/experimental/api/ScriptEvaluationConfiguration$Default;
        fileExtension = "kts"
        filePathPattern = ""
        hostConfiguration = Lkotlin/script/experimental/host/ScriptingHostConfiguration;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0002\u0018\u00002\u00020\u0001BT\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u0007\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u0007R\u0017\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u0007\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\rR\u000f\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u000eR\u0017\u0010\t\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u0007\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\rR\u000f\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u000eR\u000f\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u000eR\u0017\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u0007\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/script/experimental/annotations/KotlinScript;",
        "",
        "displayName",
        "",
        "fileExtension",
        "filePathPattern",
        "compilationConfiguration",
        "Lkotlin/reflect/KClass;",
        "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
        "evaluationConfiguration",
        "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
        "hostConfiguration",
        "Lkotlin/script/experimental/host/ScriptingHostConfiguration;",
        "()Ljava/lang/Class;",
        "()Ljava/lang/String;",
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

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->RUNTIME:Lkotlin/annotation/AnnotationRetention;
.end annotation

.annotation runtime Lkotlin/annotation/Target;
    allowedTargets = {
        .enum Lkotlin/annotation/AnnotationTarget;->CLASS:Lkotlin/annotation/AnnotationTarget;
    }
.end annotation


# virtual methods
.method public abstract compilationConfiguration()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lkotlin/script/experimental/api/ScriptCompilationConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract displayName()Ljava/lang/String;
.end method

.method public abstract evaluationConfiguration()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lkotlin/script/experimental/api/ScriptEvaluationConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fileExtension()Ljava/lang/String;
.end method

.method public abstract filePathPattern()Ljava/lang/String;
.end method

.method public abstract hostConfiguration()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lkotlin/script/experimental/host/ScriptingHostConfiguration;",
            ">;"
        }
    .end annotation
.end method
