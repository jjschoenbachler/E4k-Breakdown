.class final Lcom/appsflyer/internal/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/b$e;
    }
.end annotation


# static fields
.field private static AFInAppEventParameterName:I = 0x1

.field private static AFInAppEventType:J

.field private static AFKeystoreWrapper:[I

.field private static valueOf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/b;->AFKeystoreWrapper:[I

    const-wide v0, 0x10c504e37dbe1ba2L    # 6.931820845264222E-228

    sput-wide v0, Lcom/appsflyer/internal/b;->AFInAppEventType:J

    return-void

    nop

    :array_0
    .array-data 4
        -0x5d0c09e9
        0x1eaa6ab3
        0x377d03e3
        0x11fd16d9
        -0x67432583
        0x7e37c056
        0x2bc4409
        0x1f6a9b62
        -0x1c560ea2
        0x71ca54e7
        0x5985ee88
        0x481962ed
        0x5f77112
        0x66d761fc
        0xf939e1c
        -0x7f5c1fa2
        0x72ceff11    # 8.1999704E30f
        0x32dac6da
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 9084
    sget v0, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x10

    if-eqz p0, :cond_0

    const/16 v1, 0x29

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    if-eq v1, v0, :cond_1

    sget v0, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    check-cast p0, [C

    const/4 v0, 0x0

    .line 9074
    aget-char v0, p0, v0

    .line 9077
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [C

    .line 9078
    :goto_1
    array-length v3, p0

    const/16 v4, 0x55

    if-ge v2, v3, :cond_2

    const/16 v3, 0x4a

    goto :goto_2

    :cond_2
    const/16 v3, 0x55

    :goto_2
    if-eq v3, v4, :cond_3

    add-int/lit8 v3, v2, -0x1

    .line 9080
    aget-char v4, p0, v2

    mul-int v5, v2, v0

    xor-int/2addr v4, v5

    int-to-long v4, v4

    sget-wide v6, Lcom/appsflyer/internal/b;->AFInAppEventType:J

    xor-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9084
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 288
    sget v0, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1a

    if-nez v0, :cond_0

    const/16 v0, 0x52

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 282
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 284
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 282
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 284
    :goto_2
    sget v0, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x29

    if-nez v0, :cond_2

    const/16 v0, 0x40

    goto :goto_3

    :cond_2
    const/16 v0, 0x29

    :goto_3
    if-eq v0, v1, :cond_3

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    return-object p0

    :catch_0
    return-object v3
.end method

.method private static AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 344
    :try_start_0
    const-class v4, Landroid/content/pm/PackageManager;

    const-string v5, "\uf847\ue382\ueb49\uf303\ufaf7\uc2af\uca7b\ud227\ud9fb\ua1b1\ua908\ub0ca\ub892\u8078\u8830\u97fb\u9fbe\u677c\u6f3f\u7686\u7e5a\u4618\u4dd7\u55ad\u5d79"

    invoke-static {v5}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 345
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 347
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x5a

    if-eqz v4, :cond_0

    const/16 v4, 0x60

    goto :goto_1

    :cond_0
    const/16 v4, 0x5a

    :goto_1
    if-eq v4, v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 348
    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    goto :goto_0

    .line 360
    :cond_2
    sget p0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/b;->valueOf:I

    rem-int/lit8 p0, p0, 0x2

    .line 349
    :try_start_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 360
    :cond_3
    sget p0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/b;->valueOf:I

    rem-int/lit8 p0, p0, 0x2

    goto/16 :goto_3

    :catch_0
    move-exception p0

    .line 357
    invoke-static {}, Lcom/appsflyer/internal/ap;->AFInAppEventParameterName()Lcom/appsflyer/internal/ap;

    move-result-object p1

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x18

    invoke-static {v1, v4}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9749\u8cad\u3551\ude10\u46ea\uefaa\u9070\u397d\ua183\u4a5d\uf30e\u9bee\u0ca5\ub572\u5e7c\uc697\u6f57\u101d\ub8ec\u21ac\uca75\u732b\u1b81\u8c49\u355a\uddee\u46ad\uef65\u9036\u3888\ua148\u4a55\uf2f5\u9ba2\u0c64\ub531\u5dc6\uc64a\u6f0c\u17de\ub8af\u2163\uca2c\u7288\u1b41\u8c19\u3486\udde5"

    invoke-static {v5}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7198
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/appsflyer/internal/ap;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p0

    .line 355
    invoke-static {}, Lcom/appsflyer/internal/ap;->AFInAppEventParameterName()Lcom/appsflyer/internal/ap;

    move-result-object p1

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v3, v3}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-static {v1, v4}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9749\u8cad\u3551\ude10\u46ea\uefaa\u9070\u397d\ua183\u4a5d\uf30e\u9bee\u0ca5\ub572\u5e7c\uc697\u6f57\u101d\ub8ec\u21ac\uca75\u732b\u1b81\u8c49\u355a\uddee\u46ad\uef65\u9036\u3888\ua148\u4a55\uf2f5\u9ba2\u0c64\ub531\u5dc6\uc64a\u6f0c\u17de\ub8af\u2163\uca2c\u7288\u1b41\u8c19\u3486\udde5"

    invoke-static {v5}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6198
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/appsflyer/internal/ap;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception p0

    .line 353
    invoke-static {}, Lcom/appsflyer/internal/ap;->AFInAppEventParameterName()Lcom/appsflyer/internal/ap;

    move-result-object p1

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-static {v1, v4}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9749\u8cad\u3551\ude10\u46ea\uefaa\u9070\u397d\ua183\u4a5d\uf30e\u9bee\u0ca5\ub572\u5e7c\uc697\u6f57\u101d\ub8ec\u21ac\uca75\u732b\u1b81\u8c49\u355a\uddee\u46ad\uef65\u9036\u3888\ua148\u4a55\uf2f5\u9ba2\u0c64\ub531\u5dc6\uc64a\u6f0c\u17de\ub8af\u2163\uca2c\u7288\u1b41\u8c19\u3486\udde5"

    invoke-static {v5}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5198
    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/appsflyer/internal/ap;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 360
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x45

    if-nez p1, :cond_4

    const/16 p1, 0x19

    goto :goto_4

    :cond_4
    const/16 p1, 0x45

    :goto_4
    if-eq p1, v0, :cond_5

    const/16 p1, 0x4e

    :try_start_2
    div-int/2addr p1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_5
    return-object p0

    nop

    :array_0
    .array-data 4
        0x44b07b0d
        -0x9d472ff
        -0x7bfcc723
        0x6b65311b
        0xc0e789c
        -0x6a09aaf2
        0x23177f63
        -0x2206f166
        -0x2e0e4e1a
        -0x52703425
        -0x323108f2
        0x10756a2f
    .end array-data

    :array_1
    .array-data 4
        0x44b07b0d
        -0x9d472ff
        -0x7bfcc723
        0x6b65311b
        0xc0e789c
        -0x6a09aaf2
        0x23177f63
        -0x2206f166
        -0x2e0e4e1a
        -0x52703425
        -0x323108f2
        0x10756a2f
    .end array-data

    :array_2
    .array-data 4
        0x44b07b0d
        -0x9d472ff
        -0x7bfcc723
        0x6b65311b
        0xc0e789c
        -0x6a09aaf2
        0x23177f63
        -0x2206f166
        -0x2e0e4e1a
        -0x52703425
        -0x323108f2
        0x10756a2f
    .end array-data
.end method

.method private static AFInAppEventType(Ljava/lang/String;)Z
    .locals 2

    .line 169
    sget v0, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1c

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 166
    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 232
    sget v0, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "\u860f\u9d83"

    .line 231
    invoke-static {v0}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 243
    sget v0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/b;->valueOf:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 232
    :try_start_0
    array-length v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 243
    throw p0

    .line 250
    :cond_0
    :goto_0
    sget v0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->valueOf:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-eqz v3, :cond_2

    return-object p0

    :cond_2
    const/16 v0, 0xd

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :cond_3
    const-string v0, "\ud6d9\ucd27\ub63e"

    .line 235
    invoke-static {v0}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 236
    array-length v0, p0

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v0, v3

    .line 240
    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\u860f\u9d83"

    invoke-static {v5}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_1
    if-ge v5, v0, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    :goto_2
    if-eq v6, v3, :cond_6

    .line 250
    sget v6, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    add-int/lit8 v6, v6, 0x1d

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/b;->valueOf:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    .line 244
    aget-object v6, p0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u860f\u9d83"

    invoke-static {v6}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x2e

    goto :goto_1

    :cond_5
    aget-object v6, p0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u860f\u9d83"

    invoke-static {v6}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 248
    :cond_6
    aget-object p0, p0, v2

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x4a

    if-nez v0, :cond_7

    const/16 v0, 0x4a

    goto :goto_3

    :cond_7
    const/16 v0, 0x2f

    :goto_3
    if-eq v0, v2, :cond_8

    return-object p0

    :cond_8
    :try_start_2
    array-length v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object p0

    :catchall_2
    move-exception p0

    throw p0

    :goto_4
    nop

    goto :goto_4
.end method

.method static valueOf(Landroid/content/Context;J)Ljava/lang/String;
    .locals 15
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x12

    .line 83
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    add-int/lit8 v10, v10, 0x21

    invoke-static {v3, v10}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/b;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x30

    const/4 v5, 0x2

    if-eq v3, v8, :cond_1

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    const-string v10, ""

    invoke-static {v10, v4, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v10

    neg-int v10, v10

    invoke-static {v3, v10}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "\uba53\ua1c0"

    invoke-static {v3}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1302
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1303
    invoke-static {v10}, Lcom/appsflyer/internal/b;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\uba53\ua1c0"

    .line 1304
    invoke-static {v12}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    invoke-static {p0}, Lcom/appsflyer/internal/b;->values(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 1310
    new-array v11, v5, [I

    fill-array-data v11, :array_2

    invoke-static {v9, v9}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v12

    cmp-long v14, v12, v6

    neg-int v12, v14

    invoke-static {v11, v12}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v11, "\uba53\ua1c0"

    .line 1313
    invoke-static {v11}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :goto_2
    invoke-static {p0}, Lcom/appsflyer/internal/b;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x25

    if-nez v11, :cond_3

    const/16 v13, 0x25

    goto :goto_3

    :cond_3
    const/16 v13, 0x16

    :goto_3
    const/16 v14, 0x10

    if-eq v13, v12, :cond_4

    const-string v12, "\uba53\ua1c0"

    .line 1323
    invoke-static {v12}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move-object v11, p0

    goto :goto_5

    .line 1320
    :cond_4
    new-array v11, v5, [I

    fill-array-data v11, :array_3

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v12

    shr-int/2addr v12, v14

    add-int/2addr v12, v8

    invoke-static {v11, v12}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1328
    :goto_5
    invoke-static {p0, v10}, Lcom/appsflyer/internal/b;->AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 91
    iget-wide v10, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const/16 v12, 0xa

    .line 93
    new-array v13, v12, [I

    fill-array-data v13, :array_4

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v6

    add-int/lit8 v6, v6, 0x13

    invoke-static {v13, v6}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 2020
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v6, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 93
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 94
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    sget v6, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    add-int/lit8 v6, v6, 0x3b

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/b;->valueOf:I

    rem-int/2addr v6, v5

    move-wide/from16 v6, p1

    .line 101
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "\u7925\u62e6\ue986\u70a9\uff44\u4674\ucd15\u4bc5\ud2a4\u5980\ua0a3\u2f1b\ub65c\u3d22\ubbd0\u02fd\u8997\u10a5\u9f41\ue650\u6d27\uebc5\u72ed\uf996\u40bf\ucf4d"

    .line 2200
    invoke-static {v10}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/appsflyer/internal/b;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "\uba53\ua1c0"

    invoke-static {v10}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_6
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_5
    new-array v10, v5, [I

    fill-array-data v10, :array_5

    const-string v11, ""

    invoke-static {v11, v9, v9}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v11

    add-int/2addr v11, v8

    invoke-static {v10, v11}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :goto_7
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\ud8d7\uc314\uaa62\u9143\u788c\u27fe\u0ec1\uf627\udd34\u8445\u63a5\u4aed\u31d2\u193e\uc001\uaf49\u96b7\u7dcb\u24ef\u0c32\ueb00\ud272\ub9b7\u6081"

    .line 2202
    invoke-static {v10}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/appsflyer/internal/b;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v4, "\uba53\ua1c0"

    invoke-static {v4}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_6
    new-array v10, v5, [I

    fill-array-data v10, :array_6

    invoke-static {v4}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v10, v4}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :goto_9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2204
    new-array v4, v12, [I

    fill-array-data v4, :array_7

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v10

    shr-int/2addr v10, v3

    rsub-int/lit8 v10, v10, 0x14

    invoke-static {v4, v10}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/b;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "\uba53\ua1c0"

    invoke-static {v4}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_7
    new-array v4, v5, [I

    fill-array-data v4, :array_8

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v10

    shr-int/2addr v10, v14

    add-int/2addr v10, v8

    invoke-static {v4, v10}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :goto_b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    new-array v3, v3, [I

    fill-array-data v3, :array_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v4

    shr-int/lit8 v4, v4, 0x18

    add-int/lit8 v4, v4, 0xf

    invoke-static {v3, v4}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/internal/b;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 109
    sget v3, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v3, v3, 0x5b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/2addr v3, v5

    if-nez v3, :cond_8

    const-string v3, "\uba53\ua1c0"

    invoke-static {v3}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_8
    const-string v3, "\uba53\ua1c0"

    .line 2206
    invoke-static {v3}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_c
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_9
    new-array v3, v5, [I

    fill-array-data v3, :array_a

    const-string v4, ""

    invoke-static {v4}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v4

    add-int/2addr v4, v8

    invoke-static {v3, v4}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2217
    invoke-static {v0}, Lcom/appsflyer/internal/aj;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2219
    invoke-static {v0}, Lcom/appsflyer/internal/aj;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 3194
    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 3195
    invoke-static {v1, v14}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 3183
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 3184
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1b

    .line 4194
    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 4195
    invoke-static {v1, v14}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 4183
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 4184
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/2addr v1, v5

    if-nez v1, :cond_a

    const/16 v1, 0x23

    :try_start_2
    div-int/2addr v1, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_a
    return-object v0

    .line 97
    :catch_0
    new-array v0, v14, [I

    fill-array-data v0, :array_b

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    shr-int/2addr v1, v3

    rsub-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x15d2a4a8
        0x5f05d0b2
        0x739587f
        -0x56b0d867
        0x6998ee67
        -0x54c657fb
        -0x1466d16c
        -0x1142eed5
        0x368b8a9
        0x5f246f51
        -0x615bd2b7
        -0x267c82c6
        0x54a0a6d6
        0x2f80b366
        0x1f910103
        0x1de842d6
        -0x1d57aeb5
        0x4a6f80b4    # 3924013.0f
    .end array-data

    :array_1
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_2
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_3
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_4
    .array-data 4
        -0x46d230a4
        -0x313253db
        -0xc95f287
        0x2edd350e
        0x33617c5a    # 5.2499992E-8f
        0x33383dbe
        0x62fc568a
        0x523bb7e8
        0x154d2b
        0x5f5f34ec
    .end array-data

    :array_5
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_6
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_7
    .array-data 4
        -0x15d2a4a8
        0x5f05d0b2
        0x739587f
        -0x56b0d867
        0x3cb8b069
        -0x63f7f37b
        0x41d48c2f
        -0xb2209a3
        0x7b5ce69c
        -0x28fd415c
    .end array-data

    :array_8
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_9
    .array-data 4
        -0x15d2a4a8
        0x5f05d0b2
        0x739587f
        -0x56b0d867
        -0x1a16b6c1
        -0x7c22d211    # -1.2999758E-36f
        0x3aec2eef
        -0x616ea854
    .end array-data

    :array_a
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_b
    .array-data 4
        0x6b6d3de2
        -0x38b616f7
        -0x6c75b77b
        -0x1334076
        0x544effd3
        0x78a8275f
        -0x10b66771
        -0x249f6b9f
        0x5327d3e1
        0x1531c1a6
        -0xace2cf8
        0x6760cee9
        -0x41784156
        -0x6df6d4db
        -0x4dad63d8
        -0x5724fc84
    .end array-data
.end method

.method private static valueOf(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 11

    .line 144
    sget v0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->valueOf:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x20

    const/16 v5, 0x10

    if-eq v3, v2, :cond_a

    if-eqz p1, :cond_a

    sget v3, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    add-int/lit8 v3, v3, 0x15

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/b;->valueOf:I

    rem-int/2addr v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v3, v2, :cond_2

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_a

    goto :goto_2

    .line 144
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x69

    if-ne v3, v6, :cond_a

    .line 122
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v6, 0x0

    const/4 p1, 0x0

    const/4 v4, 0x0

    .line 129
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge p1, v8, :cond_3

    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v8

    add-int/2addr v4, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 134
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v8, 0x7

    add-int/2addr p1, v8

    invoke-virtual {v3, v8, p1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    sget p0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/b;->valueOf:I

    rem-int/2addr p0, v1

    const/4 p0, 0x0

    .line 138
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ge p0, p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_9

    :goto_6
    const/16 p0, 0x19

    const-wide/16 v9, 0x64

    cmp-long p1, v6, v9

    if-lez p1, :cond_5

    const/4 p1, 0x7

    goto :goto_7

    :cond_5
    const/16 p1, 0x19

    :goto_7
    if-eq p1, p0, :cond_7

    .line 157
    sget p0, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/2addr p0, v2

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/2addr p0, v1

    if-nez p0, :cond_6

    and-long/2addr v6, v9

    goto :goto_6

    .line 144
    :cond_6
    rem-long/2addr v6, v9

    goto :goto_6

    :cond_7
    long-to-int p0, v6

    const/16 p1, 0x17

    .line 148
    invoke-virtual {v3, p1, p0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0xa

    cmp-long p0, v6, v8

    if-gez p0, :cond_8

    .line 152
    new-array p0, v1, [I

    fill-array-data p0, :array_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v0

    shr-int/2addr v0, v5

    sub-int/2addr v2, v0

    invoke-static {p0, v2}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 144
    sget p1, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/2addr p1, v1

    return-object p0

    .line 139
    :cond_9
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p1

    int-to-long v9, p1

    add-long/2addr v6, v9

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 157
    :cond_a
    new-array p0, v5, [I

    fill-array-data p0, :array_1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    add-int/2addr p1, v4

    invoke-static {p0, p1}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x2fbdeb66
        0x46dc98a3
    .end array-data

    :array_1
    .array-data 4
        0x6b6d3de2
        -0x38b616f7
        -0x6c75b77b
        -0x1334076
        0x544effd3
        0x78a8275f
        -0x10b66771
        -0x249f6b9f
        0x5327d3e1
        0x1531c1a6
        -0xace2cf8
        0x6760cee9
        -0x41784156
        -0x6df6d4db
        -0x4dad63d8
        -0x5724fc84
    .end array-data
.end method

.method private static valueOf([II)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x4

    .line 8120
    new-array v0, v0, [C

    .line 8121
    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    new-array v1, v1, [C

    .line 8122
    sget-object v3, Lcom/appsflyer/internal/b;->AFKeystoreWrapper:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8124
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x2

    if-eqz v6, :cond_1

    .line 8140
    sget v6, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v6, v6, 0x6b

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/2addr v6, v7

    .line 8126
    aget v6, p0, v5

    shr-int/lit8 v6, v6, 0x10

    int-to-char v6, v6

    aput-char v6, v0, v4

    .line 8127
    aget v6, p0, v5

    int-to-char v6, v6

    aput-char v6, v0, v2

    add-int/lit8 v6, v5, 0x1

    .line 8128
    aget v8, p0, v6

    shr-int/lit8 v8, v8, 0x10

    int-to-char v8, v8

    aput-char v8, v0, v7

    .line 8129
    aget v6, p0, v6

    int-to-char v6, v6

    const/4 v8, 0x3

    aput-char v6, v0, v8

    .line 8132
    invoke-static {v0, v3, v4}, Lcom/appsflyer/internal/ce;->AFInAppEventParameterName([C[IZ)[I

    shl-int/lit8 v6, v5, 0x1

    .line 8135
    aget-char v9, v0, v4

    aput-char v9, v1, v6

    add-int/lit8 v9, v6, 0x1

    .line 8136
    aget-char v10, v0, v2

    aput-char v10, v1, v9

    add-int/lit8 v9, v6, 0x2

    .line 8137
    aget-char v7, v0, v7

    aput-char v7, v1, v9

    add-int/2addr v6, v8

    .line 8138
    aget-char v7, v0, v8

    aput-char v7, v1, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 8140
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v4, p1}, Ljava/lang/String;-><init>([CII)V

    sget p1, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/2addr p1, v7

    const/16 v0, 0x15

    if-nez p1, :cond_2

    const/16 p1, 0x15

    goto :goto_2

    :cond_2
    const/16 p1, 0x46

    :goto_2
    if-eq p1, v0, :cond_3

    return-object p0

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    nop

    goto :goto_3
.end method

.method private static values(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 275
    sget v0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->valueOf:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x36

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0x36

    :goto_0
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v1, :cond_2

    .line 261
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    const-string v2, ""

    invoke-static {v2, v5, v3}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    invoke-static {v1, v2}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1d

    if-eqz v0, :cond_1

    const/16 v0, 0x1d

    goto :goto_1

    :cond_1
    const/16 v0, 0x5d

    :goto_1
    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    const-string v2, ""

    invoke-static {v2, v5, v5}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0xe

    invoke-static {v1, v2}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\uade7\ub66a\u400f\u1276\uac5d\u7e49\u08ad"

    .line 264
    invoke-static {v0}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u3e63\u25ef\u674e\ua0a4\ue272\u2c3e\u6dda\uaf3f\ue894\u2af3\u7455"

    .line 265
    invoke-static {v0}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    sget v0, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    move-object v4, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 271
    invoke-static {}, Lcom/appsflyer/internal/ap;->AFInAppEventParameterName()Lcom/appsflyer/internal/ap;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const-string v2, ""

    const-string v6, ""

    invoke-static {v2, v6, v5, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x11

    invoke-static {v1, v2}, Lcom/appsflyer/internal/b;->valueOf([II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5beb\u400f\uac15\u080a\u7462\ud050\u3c44\u98ef\uc48e\u208e\u8cac\ue8dc\u54c3\ub139\u1d58\u7904\ua573\u015a\u6d4c\uc9b6\u35de\u9195\ufdf1\u59cb\u85c2\ue271\u4e0b\uaa02\u1662\u7255\ude08\u3ab2\u66ba\uc28a\u2ef1\u8af3\uf6da\u533c\ubf2f\u1b01\u4720\ua321"

    invoke-static {v6}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4198
    new-array v2, v3, [Ljava/lang/String;

    aput-object p0, v2, v5

    invoke-virtual {v0, v4, v1, v2}, Lcom/appsflyer/internal/ap;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v4

    .line 275
    :cond_4
    :goto_2
    sget p0, Lcom/appsflyer/internal/b;->valueOf:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:I

    rem-int/lit8 p0, p0, 0x2

    return-object v4

    nop

    :array_0
    .array-data 4
        0x44029164
        -0x5dc1c1b
        0x1ad758f5
        -0x337c2ad9    # -6.9118264E7f
        -0x48ba328a
        -0x5b0a1aa8
        0x5d487b1e
        -0x34d88061    # -1.0977183E7f
    .end array-data

    :array_1
    .array-data 4
        0x44029164
        -0x5dc1c1b
        0x1ad758f5
        -0x337c2ad9    # -6.9118264E7f
        -0x48ba328a
        -0x5b0a1aa8
        0x5d487b1e
        -0x34d88061    # -1.0977183E7f
    .end array-data

    :array_2
    .array-data 4
        0x44b07b0d
        -0x9d472ff
        -0x7bfcc723
        0x6b65311b
        -0x3886d08d
        -0x79d4d204
        0x388501e
        0x27e1b32a
        0x5c500741
        0x554287b8
    .end array-data
.end method
