.class public Lcom/appsflyer/internal/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static AppsFlyerConversionListener:I = 0x0

.field private static AppsFlyerInAppPurchaseValidatorListener:I = 0x0

.field private static AppsFlyerLib:I = 0x0

.field private static getInstance:I = 0x1

.field public static onAppOpenAttribution:[B

.field private static onConversionDataFail:Ljava/lang/Object;

.field private static onConversionDataSuccess:Ljava/lang/Object;

.field public static onDeepLinking:[B

.field public static final onValidateInApp:I

.field public static final onValidateInAppFailure:[B


# direct methods
.method private static $$c(ISB)Ljava/lang/String;
    .locals 9

    sget v0, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v0, v0, 0x72

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    and-int/lit8 v2, p2, 0x1

    or-int/2addr p2, v1

    add-int/2addr v2, p2

    neg-int p0, p0

    or-int/lit8 p2, p0, 0x77

    shl-int/2addr p2, v1

    xor-int/lit8 p0, p0, 0x77

    sub-int/2addr p2, p0

    neg-int p0, p1

    xor-int/lit8 p0, p0, -0x1

    rsub-int p0, p0, 0x3c3

    sub-int/2addr p0, v1

    new-array p1, v2, [B

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_1

    move-object v5, p1

    const/4 v4, 0x0

    move v8, v2

    move v2, p2

    move p2, v8

    goto :goto_3

    :cond_1
    sget p2, Lcom/appsflyer/internal/d;->getInstance:I

    xor-int/lit8 v4, p2, 0x49

    and-int/lit8 p2, p2, 0x49

    shl-int/2addr p2, v1

    add-int/2addr v4, p2

    rem-int/lit16 p2, v4, 0x80

    sput p2, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    rem-int/lit8 v4, v4, 0x2

    sget p2, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    and-int/lit8 v4, p2, 0x77

    or-int/lit8 p2, p2, 0x77

    add-int/2addr v4, p2

    rem-int/lit16 p2, v4, 0x80

    sput p2, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    :goto_1
    const/4 v4, 0x0

    move-object v5, p1

    move p2, v2

    move p1, p0

    :goto_2
    or-int/lit8 v6, p0, -0x30

    shl-int/2addr v6, v1

    xor-int/lit8 p0, p0, -0x30

    sub-int/2addr v6, p0

    xor-int/lit8 p0, v6, 0x31

    and-int/lit8 v6, v6, 0x31

    shl-int/2addr v6, v1

    add-int/2addr p0, v6

    neg-int p1, p1

    add-int/2addr p1, v2

    move v2, p1

    :goto_3
    int-to-byte p1, v2

    aput-byte p1, v5, v4

    if-ne v4, p2, :cond_3

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    aget-byte p1, v0, p0

    sget v6, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    xor-int/lit8 v7, v6, 0xb

    and-int/lit8 v6, v6, 0xb

    shl-int/2addr v6, v1

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/lit8 v7, v7, 0x2

    goto :goto_2
.end method

.method static constructor <clinit>()V
    .locals 52

    invoke-static {}, Lcom/appsflyer/internal/d;->init$0()V

    const v1, -0x8bbf26b

    .line 1000
    sput v1, Lcom/appsflyer/internal/d;->AppsFlyerInAppPurchaseValidatorListener:I

    const v1, -0x421f8747

    sput v1, Lcom/appsflyer/internal/d;->AppsFlyerLib:I

    .line 77
    :try_start_0
    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v2, 0x48

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v3, 0x2ec

    int-to-short v3, v3

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x1b3

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v1, v3, v4}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    .line 81
    sget-object v3, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v3, v3, v2

    int-to-byte v3, v3

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x28

    aget-byte v5, v5, v6

    neg-int v5, v5

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x64

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_21

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/16 v5, 0x22c

    const/16 v6, 0x176

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1771
    :try_start_1
    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v10, v10, v6

    int-to-byte v10, v10

    const/16 v11, 0x102

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x1b3

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v10

    .line 1772
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v11, v11, v2

    int-to-byte v11, v11

    or-int/lit16 v12, v11, 0x382

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v14, 0x8b

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Class;

    .line 1773
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v11, v4

    check-cast v11, [Ljava/lang/Object;

    .line 1774
    invoke-virtual {v10, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_1

    .line 246
    sget v11, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    xor-int/lit8 v12, v11, 0x2f

    and-int/lit8 v11, v11, 0x2f

    shl-int/2addr v11, v9

    add-int/2addr v12, v11

    rem-int/lit16 v11, v12, 0x80

    sput v11, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/2addr v12, v7

    if-nez v12, :cond_2

    .line 1778
    :try_start_2
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 246
    throw v1

    :catch_0
    move-object v10, v4

    .line 1785
    :catch_1
    :cond_1
    :try_start_3
    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v11, v11, v6

    int-to-byte v11, v11

    const/16 v12, 0x22f

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/4 v14, 0x6

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v11

    .line 1786
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v12, v12, v5

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0x8d

    and-int/lit16 v14, v12, 0x8d

    or-int/2addr v13, v14

    int-to-short v13, v13

    sget-object v14, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v14, v14, v2

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v12

    new-array v13, v8, [Ljava/lang/Class;

    .line 1787
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v4

    check-cast v12, [Ljava/lang/Object;

    .line 1788
    invoke-virtual {v11, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v10, v11

    :catch_2
    :cond_2
    :goto_1
    if-eqz v10, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    const/4 v11, 0x1

    :goto_2
    if-eqz v11, :cond_4

    goto :goto_3

    .line 98
    :cond_4
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v12, v12, v5

    int-to-byte v12, v12

    or-int/lit16 v13, v12, 0x2c3

    int-to-short v13, v13

    sget-object v14, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x58

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v12

    move-object v13, v4

    check-cast v13, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v4

    check-cast v12, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    :goto_3
    move-object v11, v4

    :goto_4
    if-eqz v10, :cond_5

    const/16 v12, 0x21

    goto :goto_5

    :cond_5
    const/16 v12, 0xa

    :goto_5
    const/16 v13, 0xa

    if-eq v12, v13, :cond_6

    .line 110
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v13, v13, v5

    int-to-byte v13, v13

    xor-int/lit16 v14, v13, 0x266

    and-int/lit16 v15, v13, 0x266

    or-int/2addr v14, v15

    int-to-short v14, v14

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v16, 0xcb

    aget-byte v15, v15, v16

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v13

    move-object v14, v4

    check-cast v14, [Ljava/lang/Class;

    .line 111
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object v13, v4

    check-cast v13, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v12, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    :cond_6
    move-object v12, v4

    :goto_6
    if-eqz v10, :cond_7

    .line 122
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v14, v14, v5

    int-to-byte v14, v14

    or-int/lit16 v15, v14, 0x2af

    int-to-short v15, v15

    sget-object v16, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x58

    aget-byte v6, v16, v17

    int-to-byte v6, v6

    invoke-static {v14, v15, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v6

    move-object v14, v4

    check-cast v14, [Ljava/lang/Class;

    .line 123
    invoke-virtual {v13, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v13, v4

    check-cast v13, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v6, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    :cond_7
    move-object v6, v4

    :goto_7
    const/16 v10, 0x23

    const/16 v13, 0x11

    if-eqz v11, :cond_a

    .line 2436
    sget v3, Lcom/appsflyer/internal/d;->getInstance:I

    add-int/lit8 v3, v3, 0x44

    sub-int/2addr v3, v9

    rem-int/lit16 v14, v3, 0x80

    sput v14, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    rem-int/2addr v3, v7

    if-eqz v3, :cond_8

    const/16 v3, 0x33

    goto :goto_8

    :cond_8
    const/16 v3, 0x19

    :goto_8
    const/16 v14, 0x33

    if-eq v3, v14, :cond_9

    goto :goto_9

    :cond_9
    const/16 v3, 0x4b

    :try_start_7
    div-int/2addr v3, v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_21
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_9
    move-object v2, v11

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_a
    if-nez v3, :cond_b

    const/16 v11, 0x41

    goto :goto_a

    :cond_b
    const/16 v11, 0x3b

    :goto_a
    const/16 v14, 0x3b

    if-eq v11, v14, :cond_c

    move-object v2, v4

    goto :goto_b

    .line 130
    :cond_c
    :try_start_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    int-to-byte v14, v2

    const/16 v15, 0x185

    int-to-short v15, v15

    sget-object v16, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x58

    aget-byte v2, v16, v17

    int-to-byte v2, v2

    invoke-static {v14, v15, v2}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_21

    :try_start_9
    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    sget-object v2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    sget v11, Lcom/appsflyer/internal/d;->onValidateInApp:I

    or-int/lit8 v14, v11, -0x4

    shl-int/2addr v14, v9

    xor-int/lit8 v11, v11, -0x4

    sub-int/2addr v14, v11

    int-to-short v11, v14

    sget-object v14, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v14, v14, v10

    int-to-byte v14, v14

    invoke-static {v2, v11, v14}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v11, v9, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v11, v8

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_40

    :goto_b
    if-eqz v6, :cond_d

    goto/16 :goto_c

    .line 134
    :cond_d
    :try_start_a
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v3, v3, v13

    int-to-byte v3, v3

    const/16 v6, 0x127

    int-to-short v6, v6

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    invoke-static {v3, v6, v11}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_21

    :try_start_b
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v3, v3, v13

    int-to-byte v3, v3

    const/16 v11, 0x3a5

    int-to-short v11, v11

    sget-object v14, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0xd

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    invoke-static {v3, v11, v14}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v11, v11, v5

    int-to-byte v11, v11

    xor-int/lit16 v14, v11, 0x10a

    and-int/lit16 v15, v11, 0x10a

    or-int/2addr v14, v15

    int-to-short v14, v14

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v16, 0x58

    aget-byte v15, v15, v16

    int-to-byte v15, v15

    invoke-static {v11, v14, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v11

    new-array v14, v9, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v8

    invoke-virtual {v3, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3f

    .line 2436
    sget v6, Lcom/appsflyer/internal/d;->getInstance:I

    add-int/lit8 v6, v6, 0x16

    sub-int/2addr v6, v9

    rem-int/lit16 v11, v6, 0x80

    sput v11, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    rem-int/2addr v6, v7

    .line 134
    :try_start_c
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v3, v3, v13

    int-to-byte v3, v3

    sget v11, Lcom/appsflyer/internal/d;->onValidateInApp:I

    and-int/lit8 v14, v11, -0x4

    or-int/lit8 v11, v11, -0x4

    add-int/2addr v14, v11

    int-to-short v11, v14

    sget-object v14, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v14, v14, v10

    int-to-byte v14, v14

    invoke-static {v3, v11, v14}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v11, v9, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v11, v8

    invoke-virtual {v3, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3e

    :goto_c
    if-nez v12, :cond_e

    const/4 v3, 0x1

    goto :goto_d

    :cond_e
    const/4 v3, 0x0

    :goto_d
    const/4 v11, 0x4

    const/4 v14, 0x3

    if-eq v3, v9, :cond_f

    goto :goto_e

    :cond_f
    if-eqz v2, :cond_11

    .line 144
    :try_start_d
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x48

    aget-byte v3, v3, v12

    int-to-byte v3, v3

    xor-int/lit16 v12, v3, 0x28a

    and-int/lit16 v15, v3, 0x28a

    or-int/2addr v12, v15

    int-to-short v12, v12

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v15, v15, v11

    int-to-byte v15, v15

    invoke-static {v3, v12, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_21

    :try_start_e
    new-array v12, v7, [Ljava/lang/Object;

    aput-object v3, v12, v9

    aput-object v2, v12, v8

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v3, v3, v13

    int-to-byte v3, v3

    sget v15, Lcom/appsflyer/internal/d;->onValidateInApp:I

    sub-int/2addr v15, v14

    sub-int/2addr v15, v9

    int-to-short v15, v15

    sget-object v16, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v11, v16, v10

    int-to-byte v11, v11

    invoke-static {v3, v15, v11}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v11, v7, [Ljava/lang/Class;

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v15, v15, v13

    int-to-byte v15, v15

    sget v16, Lcom/appsflyer/internal/d;->onValidateInApp:I

    add-int/lit8 v16, v16, -0x3

    add-int/lit8 v14, v16, -0x1

    int-to-short v14, v14

    sget-object v16, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v7, v16, v10

    int-to-byte v7, v7

    invoke-static {v15, v14, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v11, v8

    const-class v7, Ljava/lang/String;

    aput-object v7, v11, v9

    invoke-virtual {v3, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_10

    throw v2

    :cond_10
    throw v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_21

    :cond_11
    :goto_e
    :try_start_10
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x176

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    sget v7, Lcom/appsflyer/internal/d;->onValidateInApp:I

    or-int/lit16 v7, v7, 0x122

    int-to-short v7, v7

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/4 v14, 0x6

    aget-byte v11, v11, v14

    int-to-byte v11, v11

    invoke-static {v3, v7, v11}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v7, v7, v5

    int-to-byte v7, v7

    xor-int/lit16 v11, v7, 0x20a

    and-int/lit16 v14, v7, 0x20a

    or-int/2addr v11, v14

    int-to-short v11, v11

    sget-object v14, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x253

    aget-byte v14, v14, v15

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v7, v11, v14}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3d

    const/16 v7, 0x9

    .line 148
    :try_start_11
    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    sget v14, Lcom/appsflyer/internal/d;->onValidateInApp:I

    and-int/lit8 v15, v14, -0x4

    or-int/lit8 v14, v14, -0x4

    add-int/2addr v15, v14

    int-to-short v14, v15

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v15, v15, v10

    int-to-byte v15, v15

    invoke-static {v11, v14, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    aput-object v12, v7, v9

    const/4 v11, 0x2

    aput-object v2, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v3, v7, v11

    const/4 v11, 0x5

    aput-object v12, v7, v11

    const/4 v11, 0x6

    aput-object v2, v7, v11

    const/4 v2, 0x7

    aput-object v6, v7, v2

    const/16 v2, 0x8

    aput-object v3, v7, v2

    const/16 v2, 0x9

    .line 190
    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    const/16 v3, 0x9

    .line 194
    new-array v3, v3, [Z

    fill-array-data v3, :array_1

    const/16 v6, 0x9

    .line 198
    new-array v6, v6, [Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_21

    fill-array-data v6, :array_2

    .line 204
    :try_start_12
    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x176

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    const/16 v12, 0x349

    int-to-short v12, v12

    sget-object v14, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x160

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    invoke-static {v11, v12, v14}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 205
    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v14, 0x9c

    aget-byte v12, v12, v14

    int-to-byte v12, v12

    const/16 v14, 0x162

    int-to-short v14, v14

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v16, 0x29

    aget-byte v15, v15, v16

    int-to-byte v15, v15

    invoke-static {v12, v14, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_21

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_12

    const/4 v12, 0x0

    goto :goto_f

    :cond_12
    const/4 v12, 0x1

    :goto_f
    if-eqz v12, :cond_13

    const/4 v12, 0x0

    goto :goto_11

    .line 1778
    :cond_13
    sget v12, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v12, v12, 0x6a

    sub-int/2addr v12, v9

    rem-int/lit16 v14, v12, 0x80

    sput v14, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v14, 0x2

    rem-int/2addr v12, v14

    if-nez v12, :cond_14

    const/4 v12, 0x1

    goto :goto_10

    :cond_14
    const/4 v12, 0x0

    :goto_10
    const/4 v12, 0x1

    :goto_11
    :try_start_13
    aput-boolean v12, v6, v8

    const/16 v12, 0x15

    if-lt v11, v12, :cond_15

    const/16 v12, 0x54

    goto :goto_12

    :cond_15
    const/16 v12, 0xb

    :goto_12
    const/16 v14, 0x54

    if-eq v12, v14, :cond_16

    const/4 v12, 0x0

    goto :goto_13

    :cond_16
    const/4 v12, 0x1

    :goto_13
    aput-boolean v12, v6, v9

    const/4 v12, 0x5

    const/16 v14, 0x15

    if-lt v11, v14, :cond_17

    const/4 v14, 0x1

    goto :goto_14

    :cond_17
    const/4 v14, 0x0

    :goto_14
    aput-boolean v14, v6, v12

    const/16 v12, 0x10

    if-ge v11, v12, :cond_18

    const/4 v12, 0x1

    :goto_15
    const/4 v14, 0x4

    goto :goto_16

    :cond_18
    const/4 v12, 0x0

    goto :goto_15

    :goto_16
    aput-boolean v12, v6, v14

    const/16 v12, 0x8

    const/16 v14, 0x10

    if-ge v11, v14, :cond_19

    const/4 v11, 0x1

    goto :goto_17

    :cond_19
    const/4 v11, 0x0

    :goto_17
    aput-boolean v11, v6, v12
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_21

    :catch_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_18
    if-nez v11, :cond_1a

    const/4 v14, 0x0

    goto :goto_19

    :cond_1a
    const/4 v14, 0x1

    :goto_19
    if-eqz v14, :cond_1b

    goto :goto_1b

    :cond_1b
    const/16 v14, 0x9

    const/16 v15, 0x2d

    const/16 v16, 0x1c

    if-ge v12, v14, :cond_1c

    const/16 v14, 0x2d

    goto :goto_1a

    :cond_1c
    const/16 v14, 0x1c

    :goto_1a
    if-eq v14, v15, :cond_1d

    .line 246
    :goto_1b
    sget v1, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    or-int/lit8 v2, v1, 0xf

    shl-int/2addr v2, v9

    xor-int/lit8 v1, v1, 0xf

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v1, 0x2

    rem-int/2addr v2, v1

    return-void

    .line 229
    :cond_1d
    :try_start_14
    aget-boolean v14, v6, v12
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_21

    if-eqz v14, :cond_7c

    .line 233
    :try_start_15
    aget-boolean v14, v2, v12

    aget-object v5, v7, v12

    aget-boolean v17, v3, v12
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_21

    const/16 v22, 0xe

    if-eqz v14, :cond_22

    .line 1778
    sget v23, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v15, v23, 0x6d

    rem-int/lit16 v9, v15, 0x80

    sput v9, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v9, 0x2

    rem-int/2addr v15, v9

    if-eqz v5, :cond_1e

    const/4 v9, 0x0

    goto :goto_1c

    :cond_1e
    const/4 v9, 0x1

    :goto_1c
    if-eqz v9, :cond_1f

    goto :goto_1d

    .line 246
    :cond_1f
    sget v9, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    and-int/lit8 v15, v9, 0x51

    or-int/lit8 v9, v9, 0x51

    add-int/2addr v15, v9

    rem-int/lit16 v9, v15, 0x80

    sput v9, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v9, 0x2

    rem-int/2addr v15, v9

    .line 2306
    :try_start_16
    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v9, v9, v13

    int-to-byte v9, v9

    sget v15, Lcom/appsflyer/internal/d;->onValidateInApp:I

    const/16 v18, 0x4

    add-int/lit8 v15, v15, -0x4

    int-to-short v15, v15

    sget-object v23, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v13, v23, v10

    int-to-byte v13, v13

    invoke-static {v9, v15, v13}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x48

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    const/16 v15, 0xd2

    int-to-short v15, v15

    sget-object v23, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v25, 0x25

    aget-byte v10, v23, v25

    int-to-byte v10, v10

    invoke-static {v13, v15, v10}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-nez v9, :cond_22

    .line 2310
    :goto_1d
    :try_start_17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x121

    aget-byte v10, v10, v13

    int-to-byte v10, v10

    const/16 v13, 0x24f

    int-to-short v13, v13

    sget-object v14, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v14, v14, v16

    int-to-byte v14, v14

    invoke-static {v10, v13, v14}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x164

    aget-byte v5, v5, v10

    sub-int/2addr v5, v8

    const/4 v10, 0x1

    sub-int/2addr v5, v10

    int-to-byte v5, v5

    const/16 v10, 0x2b2

    int-to-short v10, v10

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v13, v13, v22

    int-to-byte v13, v13

    invoke-static {v5, v10, v13}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_21

    .line 246
    sget v9, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v9, v9, 0xa

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    rem-int/lit16 v13, v9, 0x80

    sput v13, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v13, 0x2

    rem-int/2addr v9, v13

    .line 2310
    :try_start_18
    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v8

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x11

    aget-byte v5, v5, v10

    int-to-byte v5, v5

    const/16 v10, 0xcb

    int-to-short v10, v10

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v14, 0x2d

    aget-byte v13, v13, v14

    neg-int v13, v13

    int-to-byte v13, v13

    invoke-static {v5, v10, v13}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v13, v8

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :catchall_3
    move-exception v0

    move-object v5, v0

    :try_start_19
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_20

    throw v9

    :cond_20
    throw v5

    :catchall_4
    move-exception v0

    move-object v5, v0

    .line 2306
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_21

    throw v9

    :cond_21
    throw v5
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_21

    :cond_22
    if-eqz v14, :cond_39

    .line 2325
    :try_start_1a
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_21

    .line 2326
    :try_start_1b
    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x11

    aget-byte v10, v10, v13

    int-to-byte v10, v10

    const/16 v13, 0x3a5

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v23, 0xd

    aget-byte v15, v15, v23

    int-to-byte v15, v15

    invoke-static {v10, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x48

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    const/16 v15, 0x7a

    int-to-short v15, v15

    sget-object v23, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v21, 0x22c

    aget-byte v8, v23, v21

    int-to-byte v8, v8

    invoke-static {v13, v15, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    const-wide/32 v28, 0x3a9680e1

    move-object/from16 v30, v5

    xor-long v4, v26, v28

    :try_start_1c
    invoke-virtual {v9, v4, v5}, Ljava/util/Random;->setSeed(J)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1e
    if-nez v4, :cond_37

    if-nez v5, :cond_23

    const/4 v13, 0x6

    goto :goto_21

    :cond_23
    if-nez v8, :cond_24

    const/4 v13, 0x5

    goto :goto_21

    :cond_24
    if-nez v10, :cond_25

    const/16 v13, 0x23

    :goto_1f
    const/16 v15, 0x23

    goto :goto_20

    :cond_25
    const/16 v13, 0x57

    goto :goto_1f

    :goto_20
    if-eq v13, v15, :cond_26

    const/4 v13, 0x3

    goto :goto_21

    :cond_26
    const/4 v13, 0x4

    .line 2344
    :goto_21
    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_21

    add-int/lit8 v23, v13, 0x2

    move-object/from16 v31, v1

    const/16 v24, 0x1

    add-int/lit8 v1, v23, -0x1

    :try_start_1d
    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x2e

    .line 2346
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_21

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v13, :cond_2b

    if-eqz v17, :cond_27

    const/16 v23, 0x10

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    const/16 v2, 0x10

    goto :goto_23

    :cond_27
    const/16 v23, 0x52

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    const/16 v2, 0x52

    :goto_23
    const/16 v3, 0x52

    if-eq v2, v3, :cond_2a

    .line 246
    sget v2, Lcom/appsflyer/internal/d;->getInstance:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    const/16 v2, 0x1a

    .line 2352
    :try_start_1e
    invoke-virtual {v9, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 2353
    invoke-virtual {v9}, Ljava/util/Random;->nextBoolean()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x0

    goto :goto_24

    :cond_28
    const/4 v3, 0x1

    :goto_24
    if-eqz v3, :cond_29

    neg-int v2, v2

    neg-int v2, v2

    xor-int/lit8 v3, v2, 0x60

    and-int/lit8 v2, v2, 0x60

    const/16 v23, 0x1

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v2

    goto :goto_25

    :cond_29
    const/16 v23, 0x1

    neg-int v2, v2

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    rsub-int/lit8 v2, v2, 0x41

    add-int/lit8 v3, v2, -0x1

    :goto_25
    int-to-char v2, v3

    .line 2358
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_2a
    const/16 v2, 0xc

    .line 2362
    invoke-virtual {v9, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x2000

    int-to-char v2, v2

    .line 2363
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_21

    :goto_26
    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    goto :goto_22

    :catch_7
    move-exception v0

    move-object v1, v0

    move-object/from16 v48, v6

    move-object/from16 v35, v7

    goto/16 :goto_2f

    :cond_2b
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    .line 2367
    :try_start_1f
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_21

    if-nez v5, :cond_2d

    const/4 v2, 0x2

    .line 2371
    :try_start_20
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v30, v3, v1

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v2, 0x11

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    sget v2, Lcom/appsflyer/internal/d;->onValidateInApp:I

    or-int/lit8 v5, v2, -0x4

    const/4 v13, 0x1

    shl-int/2addr v5, v13

    xor-int/lit8 v2, v2, -0x4

    sub-int/2addr v5, v2

    int-to-short v2, v5

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x23

    aget-byte v5, v5, v13

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x11

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    sget v13, Lcom/appsflyer/internal/d;->onValidateInApp:I

    const/4 v15, 0x3

    sub-int/2addr v13, v15

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v23, 0x23

    aget-byte v15, v15, v23

    int-to-byte v15, v15

    invoke-static {v2, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v5, v13

    const-class v2, Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v2, v5, v13

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    move-object v5, v1

    :goto_27
    move-object/from16 v35, v7

    goto/16 :goto_2a

    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_21
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2c

    throw v2

    :cond_2c
    throw v1
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_7
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_21

    :cond_2d
    if-nez v8, :cond_2e

    const/4 v2, 0x0

    :goto_28
    const/4 v3, 0x1

    goto :goto_29

    :cond_2e
    const/4 v2, 0x1

    goto :goto_28

    :goto_29
    if-eq v2, v3, :cond_30

    .line 246
    sget v2, Lcom/appsflyer/internal/d;->getInstance:I

    xor-int/lit8 v8, v2, 0x35

    and-int/lit8 v2, v2, 0x35

    shl-int/2addr v2, v3

    add-int/2addr v8, v2

    rem-int/lit16 v2, v8, 0x80

    sput v2, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    const/4 v2, 0x2

    rem-int/2addr v8, v2

    .line 2375
    :try_start_22
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v30, v3, v1

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v2, 0x11

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    sget v2, Lcom/appsflyer/internal/d;->onValidateInApp:I

    const/4 v8, 0x4

    sub-int/2addr v2, v8

    int-to-short v2, v2

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x23

    aget-byte v8, v8, v13

    int-to-byte v8, v8

    invoke-static {v1, v2, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Class;

    sget-object v2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x11

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    sget v13, Lcom/appsflyer/internal/d;->onValidateInApp:I

    or-int/lit8 v15, v13, -0x4

    const/16 v23, 0x1

    shl-int/lit8 v15, v15, 0x1

    xor-int/lit8 v13, v13, -0x4

    sub-int/2addr v15, v13

    int-to-short v13, v15

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v23, 0x23

    aget-byte v15, v15, v23

    int-to-byte v15, v15

    invoke-static {v2, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v8, v13

    const-class v2, Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v2, v8, v13

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    move-object v8, v1

    goto :goto_27

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2f

    throw v2

    :cond_2f
    throw v1
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_7
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_21

    :cond_30
    if-nez v10, :cond_32

    const/4 v2, 0x2

    .line 2379
    :try_start_24
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v30, v3, v1

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v2, 0x11

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    sget v2, Lcom/appsflyer/internal/d;->onValidateInApp:I

    and-int/lit8 v10, v2, -0x4

    or-int/lit8 v2, v2, -0x4

    add-int/2addr v10, v2

    int-to-short v2, v10

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x23

    aget-byte v10, v10, v13

    int-to-byte v10, v10

    invoke-static {v1, v2, v10}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v10, v2, [Ljava/lang/Class;

    sget-object v2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x11

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    sget v13, Lcom/appsflyer/internal/d;->onValidateInApp:I

    const/4 v15, 0x3

    sub-int/2addr v13, v15

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v23, 0x23

    aget-byte v15, v15, v23

    int-to-byte v15, v15

    invoke-static {v2, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v10, v13

    const-class v2, Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v2, v10, v13

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    move-object v10, v1

    goto/16 :goto_27

    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_31

    throw v2

    :cond_31
    throw v1
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_7
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_21

    :cond_32
    const/4 v2, 0x2

    .line 2383
    :try_start_26
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v30, v3, v1

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v2, 0x11

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    sget v2, Lcom/appsflyer/internal/d;->onValidateInApp:I

    const/4 v4, 0x4

    sub-int/2addr v2, v4

    int-to-short v2, v2

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x23

    aget-byte v4, v4, v13

    int-to-byte v4, v4

    invoke-static {v1, v2, v4}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x11

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    sget v13, Lcom/appsflyer/internal/d;->onValidateInApp:I

    xor-int/lit8 v15, v13, -0x4

    and-int/lit8 v13, v13, -0x4

    const/16 v23, 0x1

    shl-int/lit8 v13, v13, 0x1

    add-int/2addr v15, v13

    int-to-short v13, v15

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v23, 0x23

    aget-byte v15, v15, v23

    int-to-byte v15, v15

    invoke-static {v2, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v4, v13

    const-class v2, Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v2, v4, v13

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    .line 246
    sget v2, Lcom/appsflyer/internal/d;->getInstance:I

    xor-int/lit8 v3, v2, 0x2f

    and-int/lit8 v2, v2, 0x2f

    const/4 v4, 0x1

    shl-int/2addr v2, v4

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    .line 2388
    :try_start_27
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x11

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0xe9

    int-to-short v4, v4

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x160

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    invoke-static {v3, v4, v13}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v23, 0x11

    aget-byte v13, v13, v23

    int-to-byte v13, v13

    sget v23, Lcom/appsflyer/internal/d;->onValidateInApp:I

    move-object/from16 v34, v5

    const/16 v18, 0x4

    add-int/lit8 v5, v23, -0x4

    int-to-short v5, v5

    sget-object v23, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    move-object/from16 v35, v7

    const/16 v25, 0x23

    :try_start_28
    aget-byte v7, v23, v25

    int-to-byte v7, v7

    invoke-static {v13, v5, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v15, v7

    invoke-virtual {v3, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    :try_start_29
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x11

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x160

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x48

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x144

    int-to-short v5, v5

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v7, v7, v16

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    move-object v4, v1

    move-object/from16 v5, v34

    :goto_2a
    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v7, v35

    goto/16 :goto_1e

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_33

    throw v3

    :cond_33
    throw v2

    :catchall_9
    move-exception v0

    goto :goto_2b

    :catchall_a
    move-exception v0

    move-object/from16 v35, v7

    :goto_2b
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_34

    throw v3

    :cond_34
    throw v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_b

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 2392
    :try_start_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x121

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    xor-int/lit8 v5, v4, 0x4c

    and-int/lit8 v7, v4, 0x4c

    or-int/2addr v5, v7

    int-to-short v5, v5

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v7, v7, v16

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x164

    aget-byte v1, v1, v4

    and-int/lit8 v4, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v4, v1

    int-to-byte v1, v4

    const/16 v4, 0x2b2

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v5, v5, v22

    int-to-byte v5, v5

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_21

    const/4 v3, 0x2

    :try_start_2c
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v1, v4, v2

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v2, 0x11

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v2, 0xcb

    int-to-short v2, v2

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x2d

    aget-byte v3, v3, v5

    neg-int v3, v3

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const-class v2, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    :catchall_b
    move-exception v0

    move-object v1, v0

    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_35

    throw v2

    :cond_35
    throw v1

    :catchall_c
    move-exception v0

    move-object/from16 v35, v7

    move-object v1, v0

    .line 2383
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_36

    throw v2

    :cond_36
    throw v1

    :catch_9
    move-exception v0

    goto :goto_2d

    :catch_a
    move-exception v0

    goto :goto_2c

    :cond_37
    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v34, v5

    move-object/from16 v35, v7

    goto :goto_32

    :catchall_d
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v7

    move-object v1, v0

    .line 2326
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_38

    throw v2

    :cond_38
    throw v1
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_21

    :catch_b
    move-exception v0

    goto :goto_2e

    :catch_c
    move-exception v0

    move-object/from16 v31, v1

    :goto_2c
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    :goto_2d
    move-object/from16 v35, v7

    :goto_2e
    move-object v1, v0

    move-object/from16 v48, v6

    :goto_2f
    move/from16 v47, v11

    move/from16 v49, v12

    :goto_30
    const/16 v5, 0x23

    const/16 v9, 0x22c

    :goto_31
    const/16 v11, 0x48

    goto/16 :goto_57

    :cond_39
    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v35, v7

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v34, 0x0

    :goto_32
    const/16 v1, 0x1b30

    .line 2405
    :try_start_2e
    new-array v1, v1, [B

    .line 2406
    const-class v2, Lcom/appsflyer/internal/d;

    const/16 v3, 0x48

    int-to-byte v5, v3

    const/16 v3, 0x140

    int-to-short v3, v3

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x1b3

    aget-byte v7, v7, v9

    int-to-byte v7, v7

    invoke-static {v5, v3, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    .line 2407
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_21

    const/4 v3, 0x1

    :try_start_2f
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    sget-object v2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v3, 0x11

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x1e7

    int-to-short v3, v3

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x176

    aget-byte v7, v7, v9

    int-to-byte v7, v7

    invoke-static {v2, v3, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Class;

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x11

    aget-byte v7, v7, v13

    int-to-byte v7, v7

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v13, v13, v22

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x2d

    aget-byte v15, v15, v17

    neg-int v15, v15

    int-to-byte v15, v15

    invoke-static {v7, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v9, v13

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_3a

    const/4 v5, 0x1

    .line 2408
    :try_start_30
    new-array v7, v5, [Ljava/lang/Object;

    aput-object v1, v7, v13

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x11

    aget-byte v5, v5, v9

    int-to-byte v5, v5

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x176

    aget-byte v9, v9, v13

    int-to-byte v9, v9

    invoke-static {v5, v3, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x5c

    aget-byte v9, v9, v13

    int-to-byte v9, v9

    const/16 v13, 0x2f4

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x88

    aget-byte v15, v15, v17

    int-to-byte v15, v15

    invoke-static {v9, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    const-class v13, [B

    const/16 v17, 0x0

    aput-object v13, v15, v17

    invoke-virtual {v5, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_39

    .line 2409
    :try_start_31
    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x11

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x176

    aget-byte v7, v7, v9

    int-to-byte v7, v7

    invoke-static {v5, v3, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x48

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    const/16 v7, 0x144

    int-to-short v7, v7

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v9, v9, v16

    int-to-byte v9, v9

    invoke-static {v5, v7, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_38

    const/16 v2, 0x10

    const/16 v5, 0x1b0c

    move-object/from16 v7, v31

    const/4 v9, 0x0

    :goto_33
    add-int/lit8 v13, v2, 0x7b

    or-int/lit16 v15, v2, 0x1b1f

    const/16 v17, 0x1

    shl-int/lit8 v15, v15, 0x1

    xor-int/lit16 v3, v2, 0x1b1f

    sub-int/2addr v15, v3

    .line 2421
    :try_start_32
    aget-byte v3, v1, v15

    xor-int/lit8 v15, v3, 0x23

    const/16 v23, 0x23

    and-int/lit8 v3, v3, 0x23

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v15, v3

    int-to-byte v3, v15

    aput-byte v3, v1, v13

    .line 2426
    array-length v3, v1
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_21

    neg-int v13, v2

    xor-int/lit8 v13, v13, -0x1

    sub-int/2addr v3, v13

    add-int/lit8 v3, v3, -0x1

    .line 1778
    sget v13, Lcom/appsflyer/internal/d;->getInstance:I

    add-int/lit8 v13, v13, 0x1

    rem-int/lit16 v15, v13, 0x80

    sput v15, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    const/4 v15, 0x2

    rem-int/2addr v13, v15

    const/4 v13, 0x3

    .line 2426
    :try_start_33
    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v13, 0x2

    aput-object v3, v15, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v13, 0x1

    aput-object v3, v15, v13

    const/4 v3, 0x0

    aput-object v1, v15, v3

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v3, 0x11

    aget-byte v1, v1, v3

    int-to-byte v1, v1

    const/16 v3, 0x332

    int-to-short v3, v3

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x13

    aget-byte v13, v13, v17

    int-to-byte v13, v13

    invoke-static {v1, v3, v13}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x3

    new-array v13, v3, [Ljava/lang/Class;

    const-class v3, [B

    const/16 v17, 0x0

    aput-object v3, v13, v17

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v3, v13, v17

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v3, v13, v17

    invoke-virtual {v1, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v37, v1

    check-cast v37, Ljava/io/InputStream;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_37

    .line 2432
    :try_start_34
    sget-object v1, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_21

    if-nez v1, :cond_3a

    const/16 v1, 0x2f

    goto :goto_34

    :cond_3a
    const/16 v1, 0x4c

    :goto_34
    const/16 v3, 0x2f

    if-eq v1, v3, :cond_3d

    .line 2443
    :try_start_35
    sget-object v1, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;

    const-string v13, ""
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_21

    const/4 v3, 0x4

    :try_start_36
    new-array v15, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v19, 0x3

    aput-object v17, v15, v19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x2

    aput-object v17, v15, v20

    const/16 v17, 0x30

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v17

    const/16 v23, 0x1

    aput-object v17, v15, v23

    aput-object v13, v15, v3

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x176

    aget-byte v3, v3, v13

    int-to-byte v3, v3

    const/16 v13, 0xb9

    int-to-short v13, v13

    sget-object v17, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v23, 0x6

    move-object/from16 v43, v4

    aget-byte v4, v17, v23

    int-to-byte v4, v4

    invoke-static {v3, v13, v4}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0xcb

    aget-byte v4, v4, v13

    int-to-byte v4, v4

    const/16 v13, 0x2c9

    int-to-short v13, v13

    sget-object v17, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v23, 0x29

    move/from16 v44, v5

    aget-byte v5, v17, v23

    int-to-byte v5, v5

    invoke-static {v4, v13, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v13, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    const/16 v17, 0x0

    aput-object v5, v13, v17

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v5, v13, v17

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v5, v13, v17

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x3

    aput-object v5, v13, v17

    invoke-virtual {v3, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_f

    neg-int v3, v3

    const v4, -0x83d45c8

    and-int v5, v3, v4

    or-int/2addr v3, v4

    add-int/2addr v5, v3

    :try_start_37
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_21

    shr-int/lit8 v3, v3, 0x8

    neg-int v3, v3

    and-int/lit8 v4, v3, 0x5

    or-int/lit8 v3, v3, 0x5

    add-int/2addr v4, v3

    int-to-short v3, v4

    const/4 v4, 0x3

    :try_start_38
    new-array v13, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v13, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v13, v4

    const/4 v3, 0x0

    aput-object v37, v13, v3

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x48

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0xb8

    aget-byte v4, v4, v5

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x1b3

    aget-byte v5, v5, v15

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/d;->onConversionDataFail:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0xf

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x19a

    int-to-short v5, v5

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x5c

    aget-byte v15, v15, v17

    int-to-byte v15, v15

    invoke-static {v4, v5, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v15, v5, [Ljava/lang/Class;

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x11

    aget-byte v5, v5, v17

    int-to-byte v5, v5

    sget-object v17, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    move-object/from16 v45, v8

    aget-byte v8, v17, v22

    int-to-short v8, v8

    sget-object v17, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    move-object/from16 v46, v10

    const/16 v23, 0x2d

    aget-byte v10, v17, v23

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v5, v8, v10}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v15, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v5, v15, v8

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v15, v8

    invoke-virtual {v3, v4, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_e

    move-object v3, v1

    goto/16 :goto_36

    :catchall_e
    move-exception v0

    move-object v1, v0

    :try_start_39
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3b

    throw v2

    :cond_3b
    throw v1

    :catchall_f
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3c

    throw v2

    :cond_3c
    throw v1
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_21

    :cond_3d
    move-object/from16 v43, v4

    move/from16 v44, v5

    move-object/from16 v45, v8

    move-object/from16 v46, v10

    .line 1778
    sget v1, Lcom/appsflyer/internal/d;->getInstance:I

    or-int/lit8 v3, v1, 0x33

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    xor-int/lit8 v1, v1, 0x33

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    const/4 v1, 0x2

    rem-int/2addr v3, v1

    if-eqz v3, :cond_3e

    const/16 v13, 0x11

    goto :goto_35

    :cond_3e
    const/16 v13, 0x8

    .line 2436
    :goto_35
    :try_start_3a
    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v3, 0x176

    aget-byte v1, v1, v3

    int-to-byte v1, v1

    const/16 v3, 0x36c

    int-to-short v3, v3

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x8b

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v1, v3, v4}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x58

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x4a

    aget-byte v4, v4, v5

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v5, v5, v16

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_36

    shr-int/lit8 v1, v1, 0x16

    neg-int v1, v1

    neg-int v1, v1

    and-int v3, v13, v1

    or-int/2addr v1, v13

    add-int/2addr v3, v1

    int-to-short v1, v3

    const v3, -0x30852dfc

    :try_start_3b
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    const-wide/16 v26, 0x0

    cmp-long v8, v4, v26

    neg-int v4, v8

    and-int v5, v4, v3

    or-int/2addr v3, v4

    add-int v42, v5, v3

    const v3, -0x7d36131b

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    neg-int v4, v5

    neg-int v4, v4

    xor-int/lit8 v4, v4, -0x1

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v39, v3, -0x1

    .line 3074
    new-instance v3, Lcom/appsflyer/internal/bx;

    sget v38, Lcom/appsflyer/internal/d;->AppsFlyerInAppPurchaseValidatorListener:I

    sget v41, Lcom/appsflyer/internal/d;->AppsFlyerLib:I

    move-object/from16 v36, v3

    move/from16 v40, v1

    invoke-direct/range {v36 .. v42}, Lcom/appsflyer/internal/bx;-><init>(Ljava/io/InputStream;IISII)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_21

    :goto_36
    const/16 v1, 0x10

    int-to-long v4, v1

    .line 246
    sget v8, Lcom/appsflyer/internal/d;->getInstance:I

    add-int/lit8 v8, v8, 0x19

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    const/4 v10, 0x2

    rem-int/2addr v8, v10

    const/4 v8, 0x1

    .line 2446
    :try_start_3c
    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v10, v5

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x11

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v5, v5, v22

    int-to-short v5, v5

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x2d

    aget-byte v8, v8, v13

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v5, v5, v16

    int-to-byte v5, v5

    xor-int/lit16 v8, v5, 0x191

    and-int/lit16 v13, v5, 0x191

    or-int/2addr v8, v13

    int-to-short v8, v8

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x2e

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    invoke-static {v5, v8, v13}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v13, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v8, v13, v15

    invoke-virtual {v4, v5, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_35

    if-eqz v14, :cond_54

    .line 2452
    :try_start_3d
    sget-object v4, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_21

    if-nez v4, :cond_40

    .line 246
    sget v4, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    or-int/lit8 v5, v4, 0x1b

    const/4 v8, 0x1

    shl-int/2addr v5, v8

    xor-int/lit8 v4, v4, 0x1b

    sub-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v4, 0x2

    rem-int/2addr v5, v4

    if-nez v5, :cond_3f

    const/16 v4, 0x2e

    const/4 v5, 0x0

    :try_start_3e
    div-int/2addr v4, v5
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_21
    .catchall {:try_start_3e .. :try_end_3e} :catchall_10

    goto :goto_37

    :catchall_10
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_3f
    :goto_37
    move-object/from16 v4, v34

    goto :goto_38

    :cond_40
    move-object/from16 v4, v45

    .line 2452
    :goto_38
    :try_start_3f
    sget-object v5, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_21

    if-nez v5, :cond_41

    .line 1778
    sget v5, Lcom/appsflyer/internal/d;->getInstance:I

    xor-int/lit8 v8, v5, 0x13

    and-int/lit8 v5, v5, 0x13

    const/4 v10, 0x1

    shl-int/2addr v5, v10

    add-int/2addr v8, v5

    rem-int/lit16 v5, v8, 0x80

    sput v5, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    const/4 v5, 0x2

    rem-int/2addr v8, v5

    move-object/from16 v5, v46

    goto :goto_39

    :cond_41
    move-object/from16 v5, v43

    :goto_39
    const/4 v8, 0x1

    .line 3588
    :try_start_40
    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v10, v8

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x11

    aget-byte v8, v8, v13

    int-to-byte v8, v8

    const/16 v13, 0xe9

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x160

    aget-byte v15, v15, v17

    int-to-byte v15, v15

    invoke-static {v8, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v15, 0x1

    new-array v1, v15, [Ljava/lang/Class;

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x11

    aget-byte v15, v15, v17

    int-to-byte v15, v15

    sget v17, Lcom/appsflyer/internal/d;->onValidateInApp:I
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_1f

    move/from16 v47, v11

    const/16 v18, 0x4

    add-int/lit8 v11, v17, -0x4

    int-to-short v11, v11

    :try_start_41
    sget-object v17, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1e

    move-object/from16 v48, v6

    const/16 v23, 0x23

    :try_start_42
    aget-byte v6, v17, v23

    int-to-byte v6, v6

    invoke-static {v15, v11, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v1, v11

    invoke-virtual {v8, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_1d

    const/16 v6, 0x400

    .line 3594
    :try_start_43
    new-array v6, v6, [B

    move/from16 v8, v44

    :goto_3a
    if-lez v8, :cond_42

    const/4 v10, 0x0

    goto :goto_3b

    :cond_42
    const/4 v10, 0x1

    :goto_3b
    if-eqz v10, :cond_43

    move-object/from16 v50, v9

    move/from16 v49, v12

    goto/16 :goto_3c

    .line 3596
    :cond_43
    array-length v10, v6

    .line 3597
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v10
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_1c

    const/4 v11, 0x3

    :try_start_44
    new-array v15, v11, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v15, v11

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0x1

    aput-object v11, v15, v17

    aput-object v6, v15, v10

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v11, 0x11

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v11, v11, v22

    int-to-short v11, v11

    sget-object v17, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_1b

    move/from16 v49, v12

    const/16 v23, 0x2d

    :try_start_45
    aget-byte v12, v17, v23

    neg-int v12, v12

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x5c

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    xor-int/lit16 v12, v11, 0x2b0

    move-object/from16 v50, v9

    and-int/lit16 v9, v11, 0x2b0

    or-int/2addr v9, v12

    int-to-short v9, v9

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x2e

    aget-byte v12, v12, v17

    int-to-byte v12, v12

    invoke-static {v11, v9, v12}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Class;

    const-class v11, [B

    const/16 v17, 0x0

    aput-object v11, v12, v17

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v11, v12, v17

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v11, v12, v17

    invoke-virtual {v10, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v3, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1a

    const/4 v10, -0x1

    if-eq v9, v10, :cond_45

    const/4 v10, 0x3

    .line 3600
    :try_start_46
    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x1

    aput-object v12, v11, v15

    aput-object v6, v11, v10

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x11

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x160

    aget-byte v12, v12, v15

    int-to-byte v12, v12

    invoke-static {v10, v13, v12}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v12, v12, v22

    int-to-byte v12, v12

    or-int/lit16 v15, v12, 0x2c3

    int-to-short v15, v15

    sget-object v17, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    move-object/from16 v51, v6

    aget-byte v6, v17, v16

    int-to-byte v6, v6

    invoke-static {v12, v15, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x3

    new-array v15, v12, [Ljava/lang/Class;

    const-class v12, [B

    const/16 v17, 0x0

    aput-object v12, v15, v17

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v12, v15, v17

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v12, v15, v17

    invoke-virtual {v10, v6, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_11

    neg-int v6, v9

    xor-int v9, v8, v6

    and-int/2addr v6, v8

    const/4 v8, 0x1

    shl-int/2addr v6, v8

    add-int v8, v9, v6

    move/from16 v12, v49

    move-object/from16 v9, v50

    move-object/from16 v6, v51

    goto/16 :goto_3a

    :catchall_11
    move-exception v0

    move-object v1, v0

    :try_start_47
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_44

    throw v2

    :cond_44
    throw v1
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_20

    .line 3606
    :cond_45
    :goto_3c
    :try_start_48
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x11

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x160

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v3, v13, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x22c

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    xor-int/lit16 v8, v6, 0x166

    and-int/lit16 v9, v6, 0x166

    or-int/2addr v8, v9

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v9, v9, v16

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_19

    .line 246
    sget v6, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v6, v6, 0x46

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v8, 0x2

    rem-int/2addr v6, v8

    .line 3606
    :try_start_49
    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x11

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x6a

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/4 v10, 0x6

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v8, v8, v16

    int-to-byte v8, v8

    const/16 v9, 0x268

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v11, 0x2e

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_18

    .line 3607
    :try_start_4a
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x11

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x160

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v3, v13, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x48

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x144

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v9, v9, v16

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_17

    .line 3619
    :try_start_4b
    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v3, 0x1e6

    aget-byte v1, v1, v3

    int-to-byte v1, v1

    const/16 v3, 0x2b2

    int-to-short v3, v3

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x48

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v1, v3, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3620
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x23

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    const/16 v6, 0x1d1

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x29

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v3, v6, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const-class v6, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v6, v8, v9

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v6, v8, v9

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x3

    .line 3624
    new-array v6, v3, [Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_20

    :try_start_4c
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x11

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    sget v8, Lcom/appsflyer/internal/d;->onValidateInApp:I

    const/4 v9, 0x4

    sub-int/2addr v8, v9

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x23

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x22c

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x100

    and-int/lit16 v10, v8, 0x100

    or-int/2addr v9, v10

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v11, 0xcb

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_16

    const/4 v8, 0x0

    :try_start_4d
    aput-object v3, v6, v8
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_20

    .line 2436
    sget v3, Lcom/appsflyer/internal/d;->getInstance:I

    add-int/lit8 v3, v3, 0x59

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    const/4 v8, 0x2

    rem-int/2addr v3, v8

    .line 3624
    :try_start_4e
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x11

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    sget v8, Lcom/appsflyer/internal/d;->onValidateInApp:I

    or-int/lit8 v9, v8, -0x4

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    xor-int/lit8 v8, v8, -0x4

    sub-int/2addr v9, v8

    int-to-short v8, v9

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x23

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x22c

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x100

    and-int/lit16 v10, v8, 0x100

    or-int/2addr v9, v10

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v11, 0xcb

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_15

    const/4 v8, 0x1

    :try_start_4f
    aput-object v3, v6, v8

    const/4 v3, 0x0

    .line 3627
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v3, 0x2

    aput-object v8, v6, v3

    .line 3624
    invoke-virtual {v1, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_20

    .line 246
    sget v3, Lcom/appsflyer/internal/d;->getInstance:I

    and-int/lit8 v6, v3, 0x23

    const/16 v8, 0x23

    or-int/2addr v3, v8

    add-int/2addr v6, v3

    rem-int/lit16 v3, v6, 0x80

    sput v3, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    const/4 v3, 0x2

    rem-int/2addr v6, v3

    .line 3633
    :try_start_50
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x11

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    sget v6, Lcom/appsflyer/internal/d;->onValidateInApp:I

    const/4 v8, 0x3

    sub-int/2addr v6, v8

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x23

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v3, v6, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x1e6

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    xor-int/lit16 v8, v6, 0x168

    and-int/lit16 v9, v6, 0x168

    or-int/2addr v8, v9

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x5c

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_14

    .line 3634
    :try_start_51
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x11

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    sget v4, Lcom/appsflyer/internal/d;->onValidateInApp:I

    and-int/lit8 v6, v4, -0x4

    or-int/lit8 v4, v4, -0x4

    add-int/2addr v6, v4

    int-to-short v4, v6

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x23

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x1e6

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    or-int/lit16 v6, v4, 0x168

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x5c

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v6, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_13

    .line 3639
    :try_start_52
    sget-object v3, Lcom/appsflyer/internal/d;->onConversionDataFail:Ljava/lang/Object;

    if-nez v3, :cond_46

    const/16 v3, 0x39

    goto :goto_3d

    :cond_46
    const/16 v3, 0x12

    :goto_3d
    const/16 v4, 0x12

    if-eq v3, v4, :cond_5d

    .line 3641
    const-class v3, Lcom/appsflyer/internal/d;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_21

    :try_start_53
    const-class v4, Ljava/lang/Class;

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x22c

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x182

    and-int/lit16 v8, v5, 0x182

    or-int/2addr v6, v8

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x11

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_12

    :try_start_54
    sput-object v3, Lcom/appsflyer/internal/d;->onConversionDataFail:Ljava/lang/Object;

    goto/16 :goto_4a

    :catchall_12
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_47

    throw v2

    :cond_47
    throw v1

    :catchall_13
    move-exception v0

    move-object v1, v0

    .line 3634
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_48

    throw v2

    :cond_48
    throw v1

    :catchall_14
    move-exception v0

    move-object v1, v0

    .line 3633
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_49

    throw v2

    :cond_49
    throw v1
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_e
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_21

    :catchall_15
    move-exception v0

    move-object v1, v0

    .line 3624
    :try_start_55
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4a

    throw v2

    :cond_4a
    throw v1

    :catchall_16
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4b

    throw v2

    :cond_4b
    throw v1

    :catchall_17
    move-exception v0

    move-object v1, v0

    .line 3607
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4c

    throw v2

    :cond_4c
    throw v1

    :catchall_18
    move-exception v0

    move-object v1, v0

    .line 3606
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4d

    throw v2

    :cond_4d
    throw v1

    :catchall_19
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4e

    throw v2

    :cond_4e
    throw v1

    :catchall_1a
    move-exception v0

    goto :goto_3e

    :catchall_1b
    move-exception v0

    move/from16 v49, v12

    :goto_3e
    move-object v1, v0

    .line 3597
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4f

    throw v2

    :cond_4f
    throw v1
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_20

    :catchall_1c
    move-exception v0

    move/from16 v49, v12

    goto :goto_40

    :catchall_1d
    move-exception v0

    goto :goto_3f

    :catchall_1e
    move-exception v0

    move-object/from16 v48, v6

    goto :goto_3f

    :catchall_1f
    move-exception v0

    move-object/from16 v48, v6

    move/from16 v47, v11

    :goto_3f
    move/from16 v49, v12

    move-object v1, v0

    .line 3588
    :try_start_56
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_50

    throw v2

    :cond_50
    throw v1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_d
    .catchall {:try_start_56 .. :try_end_56} :catchall_20

    :catchall_20
    move-exception v0

    :goto_40
    move-object v1, v0

    goto/16 :goto_41

    :catch_d
    move-exception v0

    move-object v1, v0

    .line 3592
    :try_start_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x121

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    const/16 v6, 0x24b

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v7, v7, v16

    int-to-byte v7, v7

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x164

    aget-byte v3, v3, v6

    and-int/lit8 v6, v3, -0x1

    or-int/lit8 v3, v3, -0x1

    add-int/2addr v6, v3

    int-to-byte v3, v6

    const/16 v6, 0x2b2

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v7, v7, v22

    int-to-byte v7, v7

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_20

    const/4 v3, 0x2

    :try_start_58
    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v6, v3

    const/4 v1, 0x0

    aput-object v2, v6, v1

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v2, 0x11

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v2, 0xcb

    int-to-short v2, v2

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x2d

    aget-byte v3, v3, v7

    neg-int v3, v3

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const-class v2, Ljava/lang/Throwable;

    const/4 v7, 0x1

    aput-object v2, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_21

    :catchall_21
    move-exception v0

    move-object v1, v0

    :try_start_59
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_51

    throw v2

    :cond_51
    throw v1
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_20

    .line 3633
    :goto_41
    :try_start_5a
    sget-object v2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v3, 0x11

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    sget v3, Lcom/appsflyer/internal/d;->onValidateInApp:I

    const/4 v6, 0x3

    sub-int/2addr v3, v6

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    int-to-short v3, v3

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x23

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v2, v3, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x1e6

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    xor-int/lit16 v6, v3, 0x168

    and-int/lit16 v7, v3, 0x168

    or-int/2addr v6, v7

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x5c

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_23

    .line 1778
    sget v2, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    or-int/lit8 v3, v2, 0x45

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    xor-int/lit8 v2, v2, 0x45

    sub-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    .line 3634
    :try_start_5b
    sget-object v2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v3, 0x11

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    sget v3, Lcom/appsflyer/internal/d;->onValidateInApp:I

    xor-int/lit8 v4, v3, -0x4

    and-int/lit8 v3, v3, -0x4

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    add-int/2addr v4, v3

    int-to-short v3, v4

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x23

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x1e6

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    xor-int/lit16 v4, v3, 0x168

    and-int/lit16 v6, v3, 0x168

    or-int/2addr v4, v6

    int-to-short v4, v4

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x5c

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_22

    .line 3635
    :try_start_5c
    throw v1

    :catchall_22
    move-exception v0

    move-object v1, v0

    .line 3634
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_52

    throw v2

    :cond_52
    throw v1

    :catchall_23
    move-exception v0

    move-object v1, v0

    .line 3633
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_53

    throw v2

    :cond_53
    throw v1
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_21

    :catch_e
    move-exception v0

    goto :goto_42

    :catch_f
    move-exception v0

    move-object/from16 v48, v6

    move/from16 v47, v11

    move/from16 v49, v12

    :goto_42
    move-object v1, v0

    goto/16 :goto_30

    :cond_54
    move-object/from16 v48, v6

    move-object/from16 v50, v9

    move/from16 v47, v11

    move/from16 v49, v12

    .line 3657
    :try_start_5d
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3658
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_21

    const/4 v4, 0x1

    .line 3660
    :try_start_5e
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v5, v4

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x11

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    xor-int/lit16 v4, v1, 0x3b2

    and-int/lit16 v6, v1, 0x3b2

    or-int/2addr v4, v6

    int-to-short v4, v4

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x253

    aget-byte v6, v6, v8

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v1, v4, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x11

    aget-byte v4, v4, v8

    int-to-byte v4, v4

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v8, v8, v22

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x2d

    aget-byte v9, v9, v10

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v6, v8

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_34

    :try_start_5f
    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x11

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x1cb

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x322

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_33

    const/16 v6, 0x400

    .line 3663
    :try_start_60
    new-array v6, v6, [B
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_21

    const/4 v8, 0x0

    .line 2436
    :goto_43
    sget v9, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v9, v9, 0x2f

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v10, 0x2

    rem-int/2addr v9, v10

    const/4 v9, 0x1

    .line 3666
    :try_start_61
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v10, v9

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v11, 0x11

    aget-byte v9, v9, v11

    int-to-byte v9, v9

    or-int/lit16 v11, v9, 0x3b2

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x253

    aget-byte v12, v12, v13

    neg-int v12, v12

    int-to-byte v12, v12

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x5c

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    or-int/lit16 v12, v11, 0x2b0

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x2e

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const-class v12, [B

    const/4 v15, 0x0

    aput-object v12, v13, v15

    invoke-virtual {v9, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_32

    if-lez v9, :cond_57

    int-to-long v10, v8

    .line 3667
    :try_start_62
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_e
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_21

    cmp-long v15, v10, v12

    if-gez v15, :cond_55

    const/16 v10, 0x43

    goto :goto_44

    :cond_55
    const/16 v10, 0x3b

    :goto_44
    const/16 v11, 0x3b

    if-eq v10, v11, :cond_57

    const/4 v10, 0x3

    .line 3669
    :try_start_63
    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    aput-object v6, v11, v10

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x11

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x322

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v10, v5, v12}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v12, v12, v22

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0x2c3

    and-int/lit16 v15, v12, 0x2c3

    or-int/2addr v13, v15

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v15, v15, v16

    int-to-byte v15, v15

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v12
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_25

    const/4 v13, 0x3

    :try_start_64
    new-array v15, v13, [Ljava/lang/Class;

    const-class v17, [B

    const/16 v19, 0x0

    aput-object v17, v15, v19

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x1

    aput-object v17, v15, v19

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x2

    aput-object v17, v15, v19

    invoke-virtual {v10, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_24

    neg-int v9, v9

    neg-int v9, v9

    xor-int v10, v8, v9

    and-int/2addr v8, v9

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    add-int/2addr v8, v10

    goto/16 :goto_43

    :catchall_24
    move-exception v0

    goto :goto_45

    :catchall_25
    move-exception v0

    const/4 v13, 0x3

    :goto_45
    move-object v1, v0

    :try_start_65
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_56

    throw v2

    :cond_56
    throw v1
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_21

    :cond_57
    const/4 v13, 0x3

    .line 3672
    :try_start_66
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x11

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x322

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x2e

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x55

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x58

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_31

    .line 3676
    :try_start_67
    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x11

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    xor-int/lit16 v8, v6, 0x3b2

    and-int/lit16 v9, v6, 0x3b2

    or-int/2addr v8, v9

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x253

    aget-byte v9, v9, v10

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x48

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x144

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v10, v10, v16

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_26

    goto :goto_46

    :catchall_26
    move-exception v0

    move-object v1, v0

    :try_start_68
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_58

    throw v6

    :cond_58
    throw v1
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_68} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_21

    .line 3682
    :catch_10
    :goto_46
    :try_start_69
    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x11

    aget-byte v1, v1, v6

    int-to-byte v1, v1

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x322

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v1, v5, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x48

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x144

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v8, v8, v16

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_27

    goto :goto_47

    :catchall_27
    move-exception v0

    move-object v1, v0

    :try_start_6a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_59

    throw v4

    :cond_59
    throw v1
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6a} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_21

    .line 3686
    :catch_11
    :goto_47
    :try_start_6b
    const-class v1, Lcom/appsflyer/internal/d;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_21

    .line 2436
    sget v4, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v4, v4, 0x71

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    .line 3686
    :try_start_6c
    const-class v4, Ljava/lang/Class;

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x22c

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x182

    and-int/lit16 v8, v5, 0x182

    or-int/2addr v6, v8

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x11

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_30

    .line 3691
    :try_start_6d
    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x1e6

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x304

    and-int/lit16 v6, v4, 0x304

    or-int/2addr v5, v6

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x74

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    .line 3692
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x11

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x35b

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x2d

    aget-byte v9, v9, v10

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v6, v9

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x11

    aget-byte v5, v5, v9

    int-to-byte v5, v5

    const/16 v9, 0x243

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_21

    const/16 v11, 0x48

    :try_start_6e
    aget-byte v10, v10, v11
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_21

    int-to-byte v10, v10

    :try_start_6f
    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x2

    .line 3694
    new-array v6, v5, [Ljava/lang/Object;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_21

    :try_start_70
    new-array v5, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v5, v9

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x11

    aget-byte v3, v3, v9

    int-to-byte v3, v3

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x2d

    aget-byte v9, v9, v10

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v8, v8, v22

    int-to-byte v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x253

    aget-byte v9, v9, v10

    neg-int v9, v9

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v11, 0x2e

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const-class v9, [B

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v3, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_2f

    :try_start_71
    aput-object v3, v6, v11

    const/4 v3, 0x1

    aput-object v1, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_21

    .line 3707
    :try_start_72
    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x1e6

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x295

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x31a

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3708
    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x25

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0xa4

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v9, 0x25

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 3709
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3711
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3712
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 3714
    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/4 v9, 0x4

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x160

    aget-byte v9, v9, v10

    int-to-short v9, v9

    int-to-byte v10, v9

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x1

    .line 3715
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3717
    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/4 v11, 0x4

    aget-byte v9, v9, v11

    int-to-byte v9, v9

    const/16 v10, 0x15c

    int-to-short v10, v10

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v15, 0x17e

    aget-byte v12, v12, v15

    int-to-byte v12, v12

    invoke-static {v9, v10, v12}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v9, 0x1

    .line 3718
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3720
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3721
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3723
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3726
    new-instance v10, Ljava/util/ArrayList;

    check-cast v9, Ljava/util/List;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3728
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 3729
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 3731
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    .line 3732
    invoke-static {v9, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_1d

    const/4 v15, 0x0

    :goto_48
    if-ge v15, v12, :cond_5a

    const/16 v17, 0x1

    goto :goto_49

    :cond_5a
    const/16 v17, 0x0

    :goto_49
    if-eqz v17, :cond_5b

    .line 1778
    sget v17, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v11, v17, 0x6b

    rem-int/lit16 v13, v11, 0x80

    sput v13, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v13, 0x2

    rem-int/2addr v11, v13

    .line 3735
    :try_start_73
    invoke-static {v5, v15}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v15, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_e

    add-int/lit8 v15, v15, 0x72

    const/4 v11, 0x1

    sub-int/2addr v15, v11

    and-int/lit8 v11, v15, -0x70

    or-int/lit8 v13, v15, -0x70

    add-int v15, v11, v13

    const/4 v11, 0x4

    const/4 v13, 0x3

    goto :goto_48

    :catch_12
    move-exception v0

    move-object v2, v0

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    goto/16 :goto_52

    .line 3738
    :cond_5b
    :try_start_74
    invoke-virtual {v8, v4, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3739
    invoke-virtual {v6, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_1b
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_1d

    .line 3749
    :try_start_75
    sget-object v1, Lcom/appsflyer/internal/d;->onConversionDataFail:Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_21

    if-nez v1, :cond_5c

    .line 3751
    :try_start_76
    sput-object v3, Lcom/appsflyer/internal/d;->onConversionDataFail:Ljava/lang/Object;
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_e
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_21

    :cond_5c
    move-object v1, v3

    :cond_5d
    :goto_4a
    if-eqz v14, :cond_60

    .line 1778
    sget v3, Lcom/appsflyer/internal/d;->getInstance:I

    or-int/lit8 v4, v3, 0x79

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    xor-int/lit8 v3, v3, 0x79

    sub-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    const/4 v3, 0x2

    rem-int/2addr v4, v3

    .line 2471
    :try_start_77
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x1e6

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x2b2

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x48

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2472
    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_15
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_21

    const/16 v5, 0x23

    :try_start_78
    aget-byte v4, v4, v5
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_14
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_21

    int-to-byte v4, v4

    :try_start_79
    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x173

    aget-byte v5, v5, v6

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x88

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x11

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x243

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x48

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x2

    .line 2475
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v7, v6, v5

    const-class v5, Lcom/appsflyer/internal/d;
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_15
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_21

    :try_start_7a
    const-class v7, Ljava/lang/Class;

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_29

    const/16 v9, 0x22c

    :try_start_7b
    aget-byte v8, v8, v9

    int-to-byte v8, v8

    xor-int/lit16 v10, v8, 0x182

    and-int/lit16 v11, v8, 0x182

    or-int/2addr v10, v11

    int-to-short v10, v10

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x11

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v8, v10, v11}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_28

    const/4 v7, 0x1

    :try_start_7c
    aput-object v5, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5e

    .line 2486
    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x48

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x144

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v7, v7, v16

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2487
    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    const/16 v5, 0x23

    goto/16 :goto_4e

    :catchall_28
    move-exception v0

    goto :goto_4b

    :catchall_29
    move-exception v0

    const/16 v9, 0x22c

    :goto_4b
    move-object v1, v0

    .line 2475
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5f

    throw v2

    :cond_5f
    throw v1
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_13
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_21

    :catch_13
    move-exception v0

    goto :goto_4d

    :catch_14
    move-exception v0

    const/16 v9, 0x22c

    :goto_4c
    move-object v1, v0

    goto/16 :goto_31

    :catch_15
    move-exception v0

    const/16 v9, 0x22c

    :goto_4d
    move-object v1, v0

    const/16 v5, 0x23

    goto/16 :goto_31

    :cond_60
    const/16 v9, 0x22c

    .line 2494
    :try_start_7d
    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x11

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x243

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x48

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2495
    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_21

    const/16 v5, 0x23

    :try_start_7e
    aget-byte v4, v4, v5

    int-to-byte v4, v4

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x173

    aget-byte v6, v6, v8

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v10, 0x88

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    invoke-static {v4, v6, v8}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_19
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_21

    .line 2499
    :try_start_7f
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v7, v4, v11

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_7f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7f .. :try_end_7f} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_16
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_21

    goto :goto_4e

    :catch_16
    move-exception v0

    goto :goto_4c

    :catch_17
    move-exception v0

    move-object v3, v0

    .line 2506
    :try_start_80
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    throw v3
    :try_end_80
    .catch Ljava/lang/ClassNotFoundException; {:try_start_80 .. :try_end_80} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_16
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_21

    :catch_18
    const/4 v4, 0x0

    :goto_4e
    if-eqz v4, :cond_65

    .line 2517
    :try_start_81
    move-object v3, v4

    check-cast v3, Ljava/lang/Class;

    .line 2522
    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x48

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    const/16 v6, 0x385

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x1b3

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x2

    .line 2527
    new-array v6, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v4, v6, v8

    .line 2528
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 2529
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v6, 0x2

    .line 2530
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v8, v6

    if-nez v14, :cond_61

    const/4 v1, 0x1

    goto :goto_4f

    :cond_61
    const/4 v1, 0x0

    :goto_4f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v8, v6

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;

    const/16 v1, 0x29d4

    const/16 v4, 0x29f8

    .line 2539
    new-array v4, v4, [B

    .line 2540
    const-class v6, Lcom/appsflyer/internal/d;

    const/16 v8, 0x48

    int-to-byte v10, v8

    const/16 v8, 0x200

    int-to-short v8, v8

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x1b3

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v10, v8, v11}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    .line 2541
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_19
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_21

    const/4 v8, 0x1

    :try_start_82
    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v10, v8

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v8, 0x11

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    const/16 v8, 0x1e7

    int-to-short v8, v8

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x176

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v6, v8, v11}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x11

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v13, v13, v22

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x2d

    aget-byte v15, v15, v17

    neg-int v15, v15

    int-to-byte v15, v15

    invoke-static {v11, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual {v6, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_2d

    const/4 v10, 0x1

    .line 2543
    :try_start_83
    new-array v11, v10, [Ljava/lang/Object;

    aput-object v4, v11, v13

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x11

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x176

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v10, v8, v12}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v12, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v13, 0x5c

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    const/16 v13, 0x2f4

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v17, 0x88

    aget-byte v15, v15, v17

    int-to-byte v15, v15

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    const-class v13, [B

    const/16 v17, 0x0

    aput-object v13, v15, v17

    invoke-virtual {v10, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_2c

    .line 2544
    :try_start_84
    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v11, 0x11

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    sget-object v11, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v12, 0x176

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v10, v8, v11}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v10, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_2b

    const/16 v11, 0x48

    :try_start_85
    aget-byte v10, v10, v11

    int-to-byte v10, v10

    const/16 v12, 0x144

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v13, v13, v16

    int-to-byte v13, v13

    invoke-static {v10, v12, v13}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_2a

    .line 2548
    :try_start_86
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object v9, v3

    move-object v1, v4

    move-object/from16 v4, v43

    move-object/from16 v8, v45

    move-object/from16 v10, v46

    move/from16 v11, v47

    move-object/from16 v6, v48

    move/from16 v12, v49

    const/16 v5, 0x29d4

    goto/16 :goto_33

    :catchall_2a
    move-exception v0

    goto :goto_50

    :catchall_2b
    move-exception v0

    const/16 v11, 0x48

    :goto_50
    move-object v1, v0

    .line 2544
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_62

    throw v2

    :cond_62
    throw v1

    :catchall_2c
    move-exception v0

    const/16 v11, 0x48

    move-object v1, v0

    .line 2543
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_63

    throw v2

    :cond_63
    throw v1

    :catchall_2d
    move-exception v0

    const/16 v11, 0x48

    move-object v1, v0

    .line 2541
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_64

    throw v2

    :cond_64
    throw v1

    :cond_65
    const/16 v11, 0x48

    const/4 v2, 0x2

    .line 2553
    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    move-object/from16 v2, v50

    .line 2554
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2555
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x2

    .line 2556
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    if-nez v14, :cond_66

    const/4 v1, 0x1

    goto :goto_51

    :cond_66
    const/4 v1, 0x0

    :goto_51
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;

    move-object/from16 v2, v48

    const/4 v3, 0x0

    const/16 v6, 0x176

    const/16 v7, 0x11

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/16 v47, 0x1

    goto/16 :goto_5e

    :catch_19
    move-exception v0

    goto/16 :goto_55

    :catch_1a
    move-exception v0

    const/16 v5, 0x23

    goto/16 :goto_55

    :catch_1b
    move-exception v0

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v2, v0

    .line 3745
    :goto_52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x121

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    const/16 v6, 0x247

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v7, v7, v16

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x164

    aget-byte v1, v1, v4

    xor-int/lit8 v4, v1, -0x1

    and-int/lit8 v1, v1, -0x1

    const/4 v6, 0x1

    shl-int/2addr v1, v6

    add-int/2addr v4, v1

    int-to-byte v1, v4

    const/16 v4, 0x2b2

    int-to-short v4, v4

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    aget-byte v6, v6, v22

    int-to-byte v6, v6

    invoke-static {v1, v4, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_21

    const/4 v3, 0x2

    :try_start_87
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v1, v4, v2

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v2, 0x11

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v2, 0xcb

    int-to-short v2, v2

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x2d

    aget-byte v3, v3, v6

    neg-int v3, v3

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    const-class v2, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v2, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_2e

    :catchall_2e
    move-exception v0

    move-object v1, v0

    :try_start_88
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_67

    throw v2

    :cond_67
    throw v1

    :catchall_2f
    move-exception v0

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 3694
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_68

    throw v2

    :cond_68
    throw v1

    :catch_1c
    move-exception v0

    const/16 v5, 0x23

    const/16 v9, 0x22c

    goto/16 :goto_56

    :catchall_30
    move-exception v0

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 3686
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_69

    throw v2

    :cond_69
    throw v1

    :catchall_31
    move-exception v0

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 3672
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6a

    throw v2

    :cond_6a
    throw v1

    :catchall_32
    move-exception v0

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 3666
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6b

    throw v2

    :cond_6b
    throw v1

    :catchall_33
    move-exception v0

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 3660
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6c

    throw v2

    :cond_6c
    throw v1

    :catchall_34
    move-exception v0

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6d

    throw v2

    :cond_6d
    throw v1

    :catch_1d
    move-exception v0

    goto/16 :goto_54

    :catchall_35
    move-exception v0

    move-object/from16 v48, v6

    move/from16 v47, v11

    move/from16 v49, v12

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 2446
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6e

    throw v2

    :cond_6e
    throw v1

    :catchall_36
    move-exception v0

    move-object/from16 v48, v6

    move/from16 v47, v11

    move/from16 v49, v12

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 2436
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6f

    throw v2

    :cond_6f
    throw v1

    :catchall_37
    move-exception v0

    move-object/from16 v48, v6

    move/from16 v47, v11

    move/from16 v49, v12

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 2426
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_70

    throw v2

    :cond_70
    throw v1

    :catchall_38
    move-exception v0

    move-object/from16 v48, v6

    move/from16 v47, v11

    move/from16 v49, v12

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 2409
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_71

    throw v2

    :cond_71
    throw v1

    :catchall_39
    move-exception v0

    move-object/from16 v48, v6

    move/from16 v47, v11

    move/from16 v49, v12

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 2408
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_72

    throw v2

    :cond_72
    throw v1

    :catchall_3a
    move-exception v0

    move-object/from16 v48, v6

    move/from16 v47, v11

    move/from16 v49, v12

    const/16 v5, 0x23

    const/16 v9, 0x22c

    const/16 v11, 0x48

    move-object v1, v0

    .line 2407
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_73

    throw v2

    :cond_73
    throw v1
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_21

    :catch_1e
    move-exception v0

    goto :goto_56

    :catch_1f
    move-exception v0

    move-object/from16 v48, v6

    goto :goto_53

    :catch_20
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v48, v6

    move-object/from16 v35, v7

    :goto_53
    move/from16 v47, v11

    move/from16 v49, v12

    :goto_54
    const/16 v5, 0x23

    const/16 v9, 0x22c

    :goto_55
    const/16 v11, 0x48

    :goto_56
    move-object v1, v0

    :goto_57
    xor-int/lit8 v2, v49, 0x1

    and-int/lit8 v3, v49, 0x1

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    move v3, v2

    move-object/from16 v2, v48

    .line 244
    :goto_58
    :try_start_89
    array-length v4, v2
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_21

    if-ge v3, v4, :cond_78

    .line 272
    sget v4, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    xor-int/lit8 v6, v4, 0x69

    and-int/lit8 v4, v4, 0x69

    const/4 v7, 0x1

    shl-int/2addr v4, v7

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v4, 0x2

    rem-int/2addr v6, v4

    if-nez v6, :cond_74

    const/16 v4, 0x27

    goto :goto_59

    :cond_74
    const/4 v4, 0x4

    :goto_59
    const/16 v6, 0x27

    if-eq v4, v6, :cond_76

    .line 246
    :try_start_8a
    aget-boolean v4, v2, v3

    if-eqz v4, :cond_75

    const/4 v4, 0x1

    goto :goto_5a

    :cond_75
    const/4 v4, 0x0

    :goto_5a
    if-eqz v4, :cond_77

    goto :goto_5b

    :cond_76
    aget-boolean v4, v2, v3
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_21

    const/4 v6, 0x0

    :try_start_8b
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_21
    .catchall {:try_start_8b .. :try_end_8b} :catchall_3b

    if-eqz v4, :cond_77

    :goto_5b
    const/4 v3, 0x1

    goto :goto_5c

    :cond_77
    xor-int/lit8 v4, v3, 0x68

    and-int/lit8 v3, v3, 0x68

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    add-int/2addr v4, v3

    and-int/lit8 v3, v4, -0x67

    or-int/lit8 v4, v4, -0x67

    add-int/2addr v3, v4

    goto :goto_58

    :catchall_3b
    move-exception v0

    move-object v1, v0

    .line 272
    throw v1

    :cond_78
    const/4 v3, 0x0

    :goto_5c
    if-nez v3, :cond_79

    const/4 v3, 0x0

    goto :goto_5d

    :cond_79
    const/4 v3, 0x1

    :goto_5d
    if-eqz v3, :cond_7a

    const/4 v3, 0x0

    .line 261
    :try_start_8c
    sput-object v3, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;

    .line 262
    sput-object v3, Lcom/appsflyer/internal/d;->onConversionDataFail:Ljava/lang/Object;

    const/16 v6, 0x176

    const/16 v7, 0x11

    const/4 v8, 0x2

    const/4 v10, 0x0

    goto/16 :goto_5e

    .line 256
    :cond_7a
    sget-object v2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v3, 0x121

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x265

    int-to-short v3, v3

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x176

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v2
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_21

    const/4 v3, 0x2

    :try_start_8d
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x0

    aput-object v2, v4, v1

    sget-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x11

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    const/16 v2, 0xcb

    int-to-short v2, v2

    sget-object v3, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x2d

    aget-byte v3, v3, v5

    neg-int v3, v3

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v2, v10

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_3c

    :catchall_3c
    move-exception v0

    move-object v1, v0

    :try_start_8e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7b

    throw v2

    :cond_7b
    throw v1

    :cond_7c
    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object v3, v4

    move-object v2, v6

    move-object/from16 v35, v7

    move/from16 v47, v11

    move/from16 v49, v12

    const/16 v5, 0x23

    const/16 v6, 0x176

    const/16 v7, 0x11

    const/4 v8, 0x2

    const/16 v9, 0x22c

    const/4 v10, 0x0

    const/16 v11, 0x48

    :goto_5e
    or-int/lit8 v1, v49, 0x1

    const/4 v4, 0x1

    shl-int/2addr v1, v4

    xor-int/lit8 v12, v49, 0x1

    sub-int v12, v1, v12

    move-object v6, v2

    move-object v4, v3

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v7, v35

    move/from16 v11, v47

    const/16 v5, 0x22c

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x23

    const/16 v13, 0x11

    goto/16 :goto_18

    :catchall_3d
    move-exception v0

    move-object v1, v0

    .line 144
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7d

    throw v2

    :cond_7d
    throw v1

    :catchall_3e
    move-exception v0

    move-object v1, v0

    .line 134
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7e

    throw v2

    :cond_7e
    throw v1

    :catchall_3f
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7f

    throw v2

    :cond_7f
    throw v1

    :catchall_40
    move-exception v0

    move-object v1, v0

    .line 130
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_80

    throw v2

    :cond_80
    throw v1
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_21

    :catch_21
    move-exception v0

    move-object v1, v0

    .line 272
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :goto_5f
    nop

    goto :goto_5f

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName(IIC)Ljava/lang/Object;
    .locals 8

    sget v0, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/d;->getInstance:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    sget-object v0, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;

    sget v3, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v3, v3, 0x4c

    sub-int/2addr v3, v1

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/2addr v3, v2

    sget v3, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    and-int/lit8 v4, v3, 0x77

    or-int/lit8 v3, v3, 0x77

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/2addr v4, v2

    const/4 v3, 0x3

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    sget-object p0, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 p2, 0x48

    aget-byte p0, p0, p2

    int-to-byte p0, p0

    sget-object p2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0xb8

    aget-byte p2, p2, v5

    int-to-short p2, p2

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x1b3

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {p0, p2, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/appsflyer/internal/d;->onConversionDataFail:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ClassLoader;

    invoke-static {p0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object p2, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x5d

    aget-byte p2, p2, v5

    int-to-byte p2, p2

    const/16 v5, 0x172

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x22c

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {p2, v5, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, p1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v3, v1

    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object p1, v3, v2

    invoke-virtual {p0, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw p0
.end method

.method public static AFInAppEventType(Ljava/lang/Object;)I
    .locals 8

    sget v0, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v0, v0, 0x3a

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    sget v3, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    xor-int/lit8 v4, v3, 0x69

    and-int/lit8 v3, v3, 0x69

    shl-int/2addr v3, v1

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v3, 0x7

    if-nez v4, :cond_2

    const/4 v4, 0x7

    goto :goto_2

    :cond_2
    const/16 v4, 0x12

    :goto_2
    :try_start_1
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v2

    sget-object p0, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x48

    aget-byte p0, p0, v4

    int-to-byte p0, p0

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0xb8

    aget-byte v4, v4, v5

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x1b3

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {p0, v4, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lcom/appsflyer/internal/d;->onConversionDataFail:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    invoke-static {p0, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x5d

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x172

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x22c

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-virtual {p0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    throw v0

    :cond_3
    throw p0

    :catchall_1
    move-exception p0

    throw p0
.end method

.method public static AFKeystoreWrapper(I)I
    .locals 8

    sget v0, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    xor-int/lit8 v1, v0, 0x7b

    and-int/lit8 v0, v0, 0x7b

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v0, Lcom/appsflyer/internal/d;->onConversionDataSuccess:Ljava/lang/Object;

    sget v1, Lcom/appsflyer/internal/d;->getInstance:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    rem-int/lit8 v1, v1, 0x2

    :try_start_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v1, v3

    sget-object p0, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v4, 0x48

    aget-byte p0, p0, v4

    int-to-byte p0, p0

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0xb8

    aget-byte v4, v4, v5

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v6, 0x1b3

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {p0, v4, v5}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lcom/appsflyer/internal/d;->onConversionDataFail:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object v4, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v5, 0x5d

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x172

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v7, 0x22c

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/d;->$$c(ISB)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/appsflyer/internal/d;->getInstance:I

    and-int/lit8 v1, v0, 0x33

    or-int/lit8 v0, v0, 0x33

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    rem-int/lit8 v1, v1, 0x2

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
.end method

.method static init$0()V
    .locals 4

    sget v0, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v0, v0, 0x7c

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x3d5

    new-array v1, v0, [B

    const-string v2, "s%\u00bd<\t\u00eb\u00153\u00c5\u00faA\u00ec\u00cd\u000f\u0000\u0001\u00f3\r\u0001\u001b\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\t\u00eb\u00153\u00c2\u000b\u00f3\u00079\u00db\u00da\u0006\u00ff\u000f\u00f8\u00ee\u0003\u0000\r\u00f7\u00fa3\u00d1\u0000\u0004\u0003\u0006\u0002\u00ed\u000b\u00fa\u0001\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00cb@\u00ae\u00f3\n\u00f2\u0003\u0006\u00056\u00bf\u00fcE\u00de\u00de\u0003\u000c\u00fe\u00f2\u0000\t\u00eb\u00153\u00c0\u0005\u00faA\u00ec\u00c9\u0005\u000f#\u00cd\u000f\u0000\u0001\u00f3\u00f3\n\u00f2\u0003\u0006\u00056\u00bf\u00fcE\u00ec\u00cd\u000c\u00fd\u0008@\u00ce\u0011\u00f3\u00ff\n\u00fa\u0001\t\u00eb\u00153\u00c5\u00faA\u00ec\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e80\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00e5\u00db!\u00e8\u00f8\u00fe\u00fd\u00f95\u00df\u00ed5\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\r\u0004\u00fd\u001e\u00d1\t\u0000\u00f3\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00cc?\u0000\u0002\u00f1.\u00dd\u00fd\u0007\u00f2/\u00db\u00f7\u00fb\n\u00ff\u00ed)\u00e9\u0005\t\u00f5\u000f\u0002\u00f11\u00e2\u00fe\u00fb\u0003!\u00db\u00f7\r\u0004\u00fd\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00ea\u00df\u00ed2\u00dd\u00fd\u0007\u00f4\u000b\u00ff\u0006\u00fc\u0002\u00fe\u00fb\u0003\u0003\u00f5\u00f6\r\u00fe=\u00bb\u00fa\u0006\u00ff\u000f\u00f8?\u00ec\u00e1\u00ee\u000e!\u00df\u00ed5\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u0002\u00f11\u00d4\u000b\u00ff\"\u00e2\u00fe\u00fb\u0003!\u00db\u00f7\u00fa\u000b\u000b\u0015\u00f9\u0017\u00f8\u00ba\u00ffO\u00ba\u0005\u00f5\u0000\n\u0001\u00fe\u00f8\u00f8S\u00b4\u0007\u00ff\u00f2K\u0015\u00fa\u0016\u00f8\u0015\u00fc\u0014\u00f8\u0015\u00f8\u0018\u00f8\t\u00eb\u00153\u00c2\u000b\u00f3\u00079\u00eb\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u00f3\n\u00f2\u0003\u0006\u00056\u00cd\u00f1\u0000B\u00ed\u00d1\u0000)\u00db\u00fd\r\u0001\u00f5\u00f9\u0002\u00f1/\u00cd\u0004\u000f\u00f3\u0004\r\u00f5\u0019\u00df\u0005\u00fd\u0011\u00fa\u0002!\u00db\u00f7\r\u0002\u00ef\u0005\u00fd\u00f9\u00cc\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00cd5\t\u00eb\u00153\u00c5\u00faA\u00ea\u00e3\u00ed\u0013\u0018\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u00fd\u000e\u00fd \u00df\u00ed\t\u00eb\u00153\u00c5\u00faA\u00ec\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e8*\u00da\u0001\u0004\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u00f3\n\u00f2\u0003\u0006\u00056\u00bf\u00fcE\u00e9\u00d7\u00f8\r\u00f7\u0003\u0001\u0001\u0008\u00f7\u00fa\u0015\u00f5\u00f7\u0010\u00f2\u0008\u0002\u00f9\u0002\u00f11\u00d7\u000b\u00ee\u0000\'\u00dd\u000e\u00fd\u00ff\u00f3\u00cb\u0003\u00ed\u00132\u00cb\u0003\u00ed\u00132\u00ff\u00f9\u0007\u00f1\u000f\u0002\u00f1.\u0002\u00fb\u00fb\u00e6\u00ec\u0006\u00ff\u0005\u00fd\r\u000e\u00e5\u0011\u00f1\u0000\u000b\u00f3\u000f\u00f9\u00ec\u0016\u00fb\u00fa\r\u00ed\u000b\u00f3\u0011\u0019\u00e3\u0007\u00f0\u0011\u00ef\u00f9)\u00ef\u00ed\u000c#\u00d9\u0007\u00f8\u0008\u00f7\u00fa\u0001\u00f7\u00fd\u00fc\u000e\u00cc\u00f4\u0002>\u00ce\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3C\u00c6\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5=\u00ce4\t\u00eb\u00153\u00c5\u00faA\u00ba\u0007\u00fd\u000c\u00fb\u00f7\u0002\u00f1$\u00de\u0003\u00ff\u000b\u00f3\u00fe\u00fb\u0002\u00f13\u00df\u00ef\u0004\u0003\u00f7\u0001\u000f\u0015\u00ef\u00ed\u000c\u00f3\n\u00f2\u0003\u0006\u00056\u00cd\u00f1\u0000B\u00ed\u00de\u00ef\u000b\u00f3\r\u00f5\u00fb%\u00ec\u00f6\r\u0004\u00fd\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007\u0016\u00da\u0001\u0004\u00fb\u0001!\u00df\u0002\r\u0004\u00f4\u0002\u00f3\u0017\u00e5\t\u00f5\u000f\t\u00eb\u00153\u00c5\u00faA\u00e5\u00fa\n\u00cd\u0015\u00fe\u00f5\u00fc\u000b\u00fa\u0001\u00f3\n\u00f2\u0003\u0006\u00056\u00ba\u000f\u00ed\u0004F\u00da\u00ef\u00ed\u0004\u001f\u00e1\u000b\u00fd\u00f9\u000f\u00ed\u000c\u001c\u00e3\u00f6\u00ff\u0002\u00f1+\u00db\u0005\u00f5\u000b\u0008\u00f5+\u00d1\u0000\u0004\u0003\u0006\u0002\u00ed\u000b\u00fa\u0001\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007\u0015\u00fd\u0013\u00f8\u00ee\u0003\u0000\r\u00f7\u00fa \u00eb\u00fc\u0008\u0018\u00e4\u00fd\u0000\u0003\u00f6\t\u00eb\u00153\u00c5\u00faA\u00e8\u00dd\u00fd\u0007!\u00df\u00f2\u0010\u00f1\t\u00f9\u00fc\u0005\u00fd\u0005-\u00c9\u0005\u000f$\u00cf\u0000\u0011\u00e8\u00fd\u000e\u00fd!\u00d7\u000b\u00ee\u0000\u00f4%\u00eb\u0005\u00f4\u0002?\u00cd\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3D\u00c5\u00fb\u00fa\u000f\u00f3\u0004\r\u00f5>\u00cb?\u0000\u00f4\u0002?\u00cd\u00f1\u0000\u00fd\r\u00fa\u00f3\u0014\u00f3\u0005\u0011\u00f1\r\u00ed\u000b\u00f3\u0011\u0019\u00e3\u0007\u00f0\u0011\u00ef\u00f95\u00db\u00f7\r\u0002\u00ef\u0005\u00fd\t\u0004\u00f2\t\u00eb\u00153\u00c5\u00faA\u00e5\u00db\u00fe\u00fb\u0001!\u00df\u0002\r\u0004\u00f4"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/appsflyer/internal/d;->onValidateInAppFailure:[B

    const/16 v0, 0x8d

    sput v0, Lcom/appsflyer/internal/d;->onValidateInApp:I

    sget v0, Lcom/appsflyer/internal/d;->AppsFlyerConversionListener:I

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/d;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
