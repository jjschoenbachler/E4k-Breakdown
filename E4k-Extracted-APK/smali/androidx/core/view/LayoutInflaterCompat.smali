.class public final Landroidx/core/view/LayoutInflaterCompat;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 5

    .line 72
    sget-boolean v0, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 74
    :try_start_0
    const-class v1, Landroid/view/LayoutInflater;

    const-string v2, "mFactory2"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    .line 75
    sget-object v1, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LayoutInflaterCompatHC"

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Landroid/view/LayoutInflater;

    .line 78
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; inflation may have unexpected results."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_0
    sput-boolean v0, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    .line 83
    :cond_0
    sget-object v0, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 85
    :try_start_1
    sget-object v0, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "LayoutInflaterCompatHC"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; inflation may have unexpected results."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static getFactory(Landroid/view/LayoutInflater;)Landroidx/core/view/LayoutInflaterFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object p0

    .line 171
    instance-of v0, p0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    if-eqz v0, :cond_0

    .line 172
    check-cast p0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    iget-object p0, p0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroidx/core/view/LayoutInflaterFactory;)V
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/LayoutInflaterFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    if-eqz p1, :cond_0

    .line 113
    new-instance v1, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v1, p1}, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroidx/core/view/LayoutInflaterFactory;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 116
    new-instance v1, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v1, p1}, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroidx/core/view/LayoutInflaterFactory;)V

    .line 117
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 119
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object p1

    .line 120
    instance-of v0, p1, Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_3

    .line 123
    check-cast p1, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p0, p1}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-static {p0, v1}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :goto_0
    return-void
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/LayoutInflater$Factory2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 140
    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 143
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 144
    instance-of v1, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p0, v0}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :cond_1
    :goto_0
    return-void
.end method
