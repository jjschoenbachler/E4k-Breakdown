.class final Lcom/appsflyer/internal/b$e;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/b$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static AFInAppEventType:I = 0x56

.field private static AFLogger$LogLevel:I = 0x0

.field private static AFVersionDeclaration:I = 0x1

.field private static AppsFlyer2dXConversionCallback:C = '\udfa7'

.field private static getLevel:C = '\u096a'

.field private static valueOf:C = '\u5592'

.field private static values:C = '\u8720'


# instance fields
.field private final AFInAppEventParameterName:Landroid/content/Context;

.field private final AFKeystoreWrapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper:Ljava/util/Map;

    .line 391
    iput-object p2, p0, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName:Landroid/content/Context;

    .line 392
    invoke-direct {p0}, Lcom/appsflyer/internal/b$e;->valueOf()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/appsflyer/internal/b$e;->AFInAppEventType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private AFInAppEventType()Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    const-string v2, ""

    const/16 v3, 0x30

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/4 v8, 0x0

    .line 456
    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v9

    shr-int/2addr v9, v7

    add-int/lit8 v9, v9, 0x6

    const-string v10, "\u0003\uffff\n\ufff5\ufffc\ufff7\u0006\u0003\ufff7\n\t\ufffb"

    const-string v11, "content:"

    invoke-static {v11}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v12

    shr-int/2addr v12, v7

    add-int/lit16 v12, v12, 0xc0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v13

    rsub-int/lit8 v13, v13, 0xc

    invoke-static {v9, v10, v11, v12, v13}, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    iget-object v9, v1, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-static {v8}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    cmp-long v12, v10, v4

    add-int/lit8 v12, v12, 0x9

    const-string v10, "\ufffb\u000f\u0008\ufffd\u0002\uffde\ufffb\u000e\uffff\u0000\u0003\u000c\r\u000e\uffe6"

    const-string v11, "data:"

    invoke-static {v11}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v11

    xor-int/2addr v11, v6

    const-string v13, ""

    invoke-static {v13, v3, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v13

    rsub-int v13, v13, 0xbb

    invoke-static {v8, v8}, Landroid/view/View;->resolveSize(II)I

    move-result v14

    add-int/lit8 v14, v14, 0xf

    invoke-static {v12, v10, v11, v13, v14}, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 458
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v10

    shr-int/2addr v10, v7

    rsub-int/lit8 v10, v10, 0x3

    const-string v11, "\u0001\ufffd\u0002\u0005\ufffd"

    invoke-static {v8}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v12

    xor-int/2addr v12, v6

    invoke-static {v8, v8}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v13

    rsub-int v13, v13, 0x87

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x5

    invoke-static {v10, v11, v12, v13, v14}, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 459
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v11

    shr-int/2addr v11, v7

    rsub-int/lit8 v11, v11, 0x1

    const-string v12, "\uffe8\uffe5\uffe9\u001e-"

    const-string v13, "about:"

    invoke-static {v13}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v14

    shr-int/2addr v14, v7

    add-int/lit16 v14, v14, 0x9b

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v15

    cmp-long v17, v15, v4

    rsub-int/lit8 v15, v17, 0x6

    invoke-static {v11, v12, v13, v14, v15}, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 461
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/aj;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    sget v2, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v9, v2, 0x80

    sput v9, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v2, 0x61

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    :goto_0
    const/16 v9, 0x61

    goto :goto_1

    :catch_0
    move-exception v0

    .line 464
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u0a02\u2dcf\uda49\u0b94\u878b\u72b1\ub4c3\ua4da\u831d\ua277\ub7ba\u24f8\u94f9\u2b68\u240e\u34c7\u05ac\u5c67\u82ca\u8510\ue4d9\u8e73\u7291\ua2ca\u35dd\u45b6\ucd5e\ucb82\uebdf\ub299\uc7b6\ub65f\u2875\u6b50\ub2a4\u0012\ubde7\u1b33\uf618\u7be9\u87a7\u641e\u1c06\u7525\uae0f\u0525"

    invoke-static {v10}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u90e8\u0693\u0560\u53ff\u5482\ub035\u6583\uabf3\ud8f6\u2839\u20a6\uf7df\u4c35\ufd81\u5113\u6e7a\u67bb\ucc33\u12ed\u5bbc"

    invoke-static {v2}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 469
    :try_start_1
    iget-object v0, v1, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "\u9fed\u49b8\udcdb\u5a6e\u7d4f\u51b6\ubb79\ubebc\u10af\uaa73\u93cd\u6939\u7bd4\u37b6\ud442\u8c97\u2066\u34b1\u240e\u34c7\u5a9f\udd70\ufd35\u36f2\uec54\ud766\u6a1f\uc0fc\u68f6\ua5d2\uf25f\u4085\u087d\u3e54\u1904\u8114\u7ce6\u9c3f"

    invoke-static {v11}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    const/16 v9, 0xe

    goto :goto_2

    :cond_1
    const/4 v9, 0x1

    :goto_2
    const/16 v10, -0xa8c

    if-eq v9, v6, :cond_2

    .line 489
    sget v9, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    add-int/lit8 v9, v9, 0x1d

    rem-int/lit16 v11, v9, 0x80

    sput v11, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    rem-int/lit8 v9, v9, 0x2

    :try_start_2
    const-string v9, "\uc23c\u0ca3\u7270\ud37c\u1f1f\u66ed\u94f9\u2b68\u1fca\uc18b\ua91e\u79bb"

    .line 471
    invoke-static {v9}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 472
    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 489
    :cond_2
    sget v0, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v9, v0, 0x80

    sput v9, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v9, 0x49

    if-eqz v0, :cond_3

    const/16 v0, 0x4a

    goto :goto_3

    :cond_3
    const/16 v0, 0x49

    .line 474
    :goto_3
    :try_start_3
    iget-object v0, v1, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v9, 0x58

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/16 v3, 0x58

    :goto_4
    if-eq v3, v9, :cond_7

    .line 489
    sget v3, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    add-int/lit8 v3, v3, 0x3d

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    rem-int/lit8 v3, v3, 0x2

    const/16 v9, 0x5f

    if-eqz v3, :cond_5

    const/16 v3, 0x5f

    goto :goto_5

    :cond_5
    const/16 v3, 0x44

    :goto_5
    if-eq v3, v9, :cond_6

    .line 475
    :try_start_4
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x3

    const-string v9, ",\uffec\uffea"

    const-string v11, "data:"

    invoke-static {v11}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v11

    xor-int/2addr v11, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v12

    shr-int/2addr v12, v7

    rsub-int v12, v12, 0xa2

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x3

    invoke-static {v3, v9, v11, v12, v13}, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_6
    const/4 v3, 0x4

    .line 489
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v9

    add-int/lit8 v9, v9, -0x34

    rem-int/2addr v3, v9

    const-string v9, ",\uffec\uffea"

    const-string v11, "data:"

    invoke-static {v11}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v11

    or-int/2addr v11, v6

    const/16 v12, 0x5da9

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v13

    shl-int/lit8 v13, v13, 0x5a

    ushr-int/2addr v12, v13

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    rsub-int/lit8 v13, v13, 0x4

    invoke-static {v3, v9, v11, v12, v13}, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    .line 476
    :goto_7
    iget-object v3, v1, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName:Landroid/content/Context;

    const-string v9, "l\ucb49\u7bd4\u37b6\u6c45\udfc5\u0bce\u8564"

    invoke-static {v9}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    const/4 v9, -0x1

    .line 477
    invoke-virtual {v3, v9}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 478
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-static {v11}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v11

    neg-int v11, v11

    const-string v12, "\u0000"

    const-string v13, ""

    invoke-static {v13}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, ""

    invoke-static {v14, v8, v8}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v14

    rsub-int v14, v14, 0xb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v15

    shr-int/2addr v15, v7

    add-int/2addr v15, v6

    invoke-static {v11, v12, v13, v14, v15}, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\u2015\u6fce\ud797\u17e7"

    invoke-static {v6}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u2015\u6fce\u4beb\u21a3"

    invoke-static {v0}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u2015\u6fce\ufe5a\u9d2c"

    invoke-static {v0}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper:Ljava/util/Map;

    .line 482
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    invoke-static {v0}, Lcom/appsflyer/internal/b$e$a;->AFInAppEventParameterName(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/b$e$a;->AFInAppEventType([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/b$e$a;->AFKeystoreWrapper([B)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0a02\u2dcf\uda49\u0b94\u878b\u72b1\ub4c3\ua4da\u831d\ua277\ub7ba\u24f8\u94f9\u2b68\u240e\u34c7\u05ac\u5c67\u82ca\u8510\ue4d9\u8e73\u7291\ua2ca\u35dd\u45b6\ucd5e\ucb82\uebdf\ub299\uc7b6\ub65f\u2875\u6b50\ub2a4\u0012\ubde7\u1b33\uf618\u7be9\u87a7\u641e\u1c06\u7525\uae0f\u0525"

    invoke-static {v6}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    const-string v3, ""

    invoke-static {v2, v3, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    const-string v3, "\u001c\uffdc\u001b\uffdc\u001b\uffdd\uffdd\u000e\u0013\u001f\u000c\u0018\u0011\uffdb\u001c\uffdb"

    invoke-static {v8, v8}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v9

    shr-int/lit8 v7, v9, 0x10

    add-int/lit16 v7, v7, 0xab

    invoke-static {v8, v8}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v8

    cmp-long v10, v8, v4

    rsub-int/lit8 v4, v10, 0xf

    invoke-static {v2, v3, v6, v7, v4}, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private static AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 3124
    sget v0, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_0
    if-eqz p0, :cond_1

    .line 0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    check-cast p0, [C

    .line 3104
    array-length v0, p0

    new-array v0, v0, [C

    .line 3107
    new-array v2, v1, [C

    .line 3124
    sget v3, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    add-int/lit8 v3, v3, 0x7d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    rem-int/2addr v3, v1

    const/4 v4, 0x6

    if-nez v3, :cond_2

    const/4 v3, 0x6

    goto :goto_1

    :cond_2
    const/16 v3, 0x27

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3108
    :goto_2
    array-length v5, p0

    const/16 v6, 0x56

    if-ge v4, v5, :cond_3

    const/16 v5, 0x56

    goto :goto_3

    :cond_3
    const/16 v5, 0x46

    :goto_3
    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    .line 3121
    aget-char p0, v0, v3

    .line 3124
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v7, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_4
    sget v5, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    add-int/lit8 v5, v5, 0x53

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    rem-int/2addr v5, v1

    .line 3110
    aget-char v5, p0, v4

    aput-char v5, v2, v3

    add-int/lit8 v5, v4, 0x1

    .line 3111
    aget-char v6, p0, v5

    aput-char v6, v2, v7

    .line 3112
    sget-char v6, Lcom/appsflyer/internal/b$e;->values:C

    sget-char v8, Lcom/appsflyer/internal/b$e;->valueOf:C

    sget-char v9, Lcom/appsflyer/internal/b$e;->getLevel:C

    sget-char v10, Lcom/appsflyer/internal/b$e;->AppsFlyer2dXConversionCallback:C

    invoke-static {v2, v6, v8, v9, v10}, Lcom/appsflyer/internal/cd;->AFKeystoreWrapper([CCCCC)V

    .line 3117
    aget-char v6, v2, v3

    aput-char v6, v0, v4

    .line 3118
    aget-char v6, v2, v7

    aput-char v6, v0, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_2
.end method

.method private static AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x22

    if-eqz p1, :cond_0

    const/16 v1, 0x22

    goto :goto_0

    :cond_0
    const/16 v1, 0x21

    :goto_0
    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :goto_1
    check-cast p1, [C

    .line 2115
    new-array v0, p4, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_2

    .line 2152
    sget v3, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    add-int/lit8 v3, v3, 0x11

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    rem-int/lit8 v3, v3, 0x2

    .line 2121
    aget-char v3, p1, v2

    add-int/2addr v3, p3

    int-to-char v3, v3

    .line 2123
    aput-char v3, v0, v2

    .line 2124
    aget-char v3, v0, v2

    sget v4, Lcom/appsflyer/internal/b$e;->AFInAppEventType:I

    sub-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/16 p1, 0x44

    if-lez p0, :cond_3

    const/16 p3, 0x44

    goto :goto_3

    :cond_3
    const/16 p3, 0x42

    :goto_3
    if-eq p3, p1, :cond_4

    goto :goto_4

    .line 2152
    :cond_4
    sget p1, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    rem-int/lit8 p1, p1, 0x2

    .line 2132
    new-array p1, p4, [C

    .line 2134
    invoke-static {v0, v1, p1, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int p3, p4, p0

    .line 2135
    invoke-static {p1, v1, v0, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2136
    invoke-static {p1, p0, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-eqz p2, :cond_6

    .line 2152
    sget p0, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x1

    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    .line 2142
    :goto_5
    new-array p0, p4, [C

    :goto_6
    if-ge v1, p4, :cond_7

    sub-int p2, p4, v1

    sub-int/2addr p2, p1

    .line 2146
    aget-char p2, v0, p2

    aput-char p2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    move-object p0, v0

    .line 2152
    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private valueOf()Ljava/lang/String;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 448
    sget v0, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    .line 420
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-object v2, p0, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    const-string v5, "\u0003\uffff\n\ufff5\ufffc\ufff7\u0006\u0003\ufff7\n\t\ufffb"

    invoke-static {v3}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    shr-int/lit8 v8, v8, 0x16

    add-int/lit16 v8, v8, 0xc0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    add-int/lit8 v9, v9, 0xc

    invoke-static {v4, v5, v6, v8, v9}, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    iget-object v4, p0, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "\u97d2\u5377\u94f9\u2b68\udcdb\u5a6e"

    invoke-static {v5}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x34

    if-nez v4, :cond_0

    const/16 v6, 0x35

    goto :goto_0

    :cond_0
    const/16 v6, 0x34

    :goto_0
    const/4 v8, 0x4

    if-eq v6, v5, :cond_1

    .line 448
    sget v4, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    add-int/lit8 v4, v4, 0x51

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    rem-int/2addr v4, v1

    .line 425
    :try_start_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v8

    const-string v5, "\ufff6\u0013\u0003\u0002\ufff8\u0002\ufff5\u0006"

    const-string v6, "http://"

    invoke-static {v6}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    add-int/lit16 v9, v9, 0xa2

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x8

    invoke-static {v4, v5, v6, v9, v10}, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper(ILjava/lang/String;ZII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 428
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 431
    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    aput-object v4, v2, v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/appsflyer/internal/b$e;->values([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v8, :cond_2

    .line 435
    invoke-virtual {v0, v8, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    :goto_1
    if-ge v1, v8, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    :goto_3
    const-string v1, "\uf1b1\ufc7e\ue4d9\u8e73"

    .line 444
    invoke-static {v1}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x31

    .line 441
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u57c0\u1b98\uda49\u0b94\u878b\u72b1\ub4c3\ua4da\u831d\ua277\ub7ba\u24f8\u94f9\u2b68\u240e\u34c7\u05ac\u5c67\u82ca\u8510\ue4d9\u8e73\u82ca\u8510\u58b8\u2544\uebdf\ub299\uc7b6\ub65f\u2875\u6b50\ub2a4\u0012\ubde7\u1b33\uf618\u7be9\u87a7\u641e\u1c06\u7525\uae0f\u0525"

    invoke-static {v2}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    const-string v0, "\ub0a3\u24a8\ue4d9\u8e73\uce57\u35c7\uce57\u35c7"

    .line 448
    invoke-static {v0}, Lcom/appsflyer/internal/b$e;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs values([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9
    .param p0    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x22

    const/4 v4, 0x3

    if-ge v2, v4, :cond_0

    const/16 v5, 0x17

    goto :goto_1

    :cond_0
    const/16 v5, 0x22

    :goto_1
    if-eq v5, v3, :cond_1

    .line 397
    aget-object v3, p0, v2

    .line 398
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 402
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_6

    .line 414
    sget v5, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    add-int/lit8 v5, v5, 0x25

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    rem-int/lit8 v5, v5, 0x2

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    :goto_3
    const/16 v7, 0x1b

    if-ge v5, v4, :cond_2

    const/16 v8, 0x1e

    goto :goto_4

    :cond_2
    const/16 v8, 0x1b

    :goto_4
    if-eq v8, v7, :cond_5

    sget v7, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:I

    add-int/lit8 v7, v7, 0x4f

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    aget-object v7, p0, v5

    .line 408
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x11

    .line 409
    :try_start_0
    div-int/2addr v8, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_4

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 414
    throw p0

    .line 407
    :cond_3
    aget-object v7, p0, v5

    .line 408
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-nez v6, :cond_4

    goto :goto_5

    .line 409
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    xor-int/2addr v7, v6

    :goto_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 411
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v2
.end method
