.class Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/CheckedTextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api14Impl"
.end annotation


# static fields
.field private static sCheckMarkDrawableField:Ljava/lang/reflect/Field;

.field private static sResolved:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0    # Landroid/widget/CheckedTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 177
    sget-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 179
    :try_start_0
    const-class v1, Landroid/widget/CheckedTextView;

    const-string v2, "mCheckMarkDrawable"

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    .line 181
    sget-object v1, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CheckedTextViewCompat"

    const-string v3, "Failed to retrieve mCheckMarkDrawable field"

    .line 183
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    :goto_0
    sput-boolean v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sResolved:Z

    .line 188
    :cond_0
    sget-object v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    :try_start_1
    sget-object v0, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string v0, "CheckedTextViewCompat"

    const-string v2, "Failed to get check mark drawable via reflection"

    .line 192
    invoke-static {v0, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    sput-object v1, Landroidx/core/widget/CheckedTextViewCompat$Api14Impl;->sCheckMarkDrawableField:Ljava/lang/reflect/Field;

    :cond_1
    return-object v1
.end method
