.class public interface abstract Lkotlin/script/experimental/host/GetScriptingClass;
.super Ljava/lang/Object;
.source "hostConfiguration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J)\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0010\u0006\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u00a6\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/script/experimental/host/GetScriptingClass;",
        "",
        "invoke",
        "Lkotlin/reflect/KClass;",
        "classType",
        "Lkotlin/script/experimental/api/KotlinType;",
        "contextClass",
        "hostConfiguration",
        "Lkotlin/script/experimental/host/ScriptingHostConfiguration;",
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


# virtual methods
.method public abstract invoke(Lkotlin/script/experimental/api/KotlinType;Lkotlin/reflect/KClass;Lkotlin/script/experimental/host/ScriptingHostConfiguration;)Lkotlin/reflect/KClass;
    .param p1    # Lkotlin/script/experimental/api/KotlinType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/script/experimental/host/ScriptingHostConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/script/experimental/api/KotlinType;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/script/experimental/host/ScriptingHostConfiguration;",
            ")",
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
