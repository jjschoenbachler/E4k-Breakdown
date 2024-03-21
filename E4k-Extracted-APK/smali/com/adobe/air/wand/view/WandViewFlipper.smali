.class public Lcom/adobe/air/wand/view/WandViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "WandViewFlipper.java"

# interfaces
.implements Lcom/adobe/air/wand/view/WandView;


# static fields
.field private static final ACTIVE_WIFI_ASSIST_MESSAGE:Ljava/lang/String; = "Enter this PIN in the desktop game and press \'Connect\'"

.field private static final DEFAULT_VIEW_FONT_ASSET:Ljava/lang/String; = "AdobeClean-Light.ttf"

.field private static final INACTIVE_WIFI_ASSIST_MESSAGE:Ljava/lang/String; = "Connect this device to WiFi to get the pairing PIN"

.field private static final LOG_TAG:Ljava/lang/String; = "WandViewFlipper"

.field private static final PIN_TITLE:Ljava/lang/String; = "PIN : "

.field private static final TITLE_DESCRIPTION_STRING:Ljava/lang/String; = "Use this device as a Wireless Gamepad"


# instance fields
.field private mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

.field private mCompanionViewHolder:Landroid/view/View;

.field private mCurrentViewIndex:I

.field private mDefaultView:Landroid/view/View;

.field private mListener:Lcom/adobe/air/wand/view/WandView$Listener;

.field private mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    .line 52
    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    .line 53
    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 54
    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 56
    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    .line 61
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/view/WandViewFlipper;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 50
    iput p2, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    .line 52
    iput-object p2, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    .line 53
    iput-object p2, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 54
    iput-object p2, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 56
    iput-object p2, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    .line 67
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/view/WandViewFlipper;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/view/WandViewFlipper;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/view/WandViewFlipper;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/adobe/air/wand/view/WandViewFlipper;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/view/WandViewFlipper;)Lcom/adobe/air/wand/view/WandView$Listener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getTokenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/adobe/air/wand/view/WandViewFlipper;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Z)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getTokenDesc(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTokenDesc(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "Enter this PIN in the desktop game and press \'Connect\'"

    return-object p0

    :cond_0
    const-string p0, "Connect this device to WiFi to get the pairing PIN"

    return-object p0
.end method

.method private static getTokenString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PIN : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    const/4 v1, 0x1

    .line 75
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->setKeepScreenOn(Z)V

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 79
    sget v3, Lcom/adobe/air/R$layout;->wand_default:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    .line 80
    sget v3, Lcom/adobe/air/R$layout;->wand_companion:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 84
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    sget v2, Lcom/adobe/air/R$id;->title_string:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "AdobeClean-Light.ttf"

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    sget v2, Lcom/adobe/air/R$id;->token_string:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    sget v2, Lcom/adobe/air/R$id;->token_desc:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    sget v2, Lcom/adobe/air/R$id;->title_desc:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string p1, "Use this device as a Wireless Gamepad"

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mDefaultView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/air/wand/view/WandViewFlipper;->addView(Landroid/view/View;I)V

    .line 100
    iget-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/adobe/air/wand/view/WandViewFlipper;->addView(Landroid/view/View;I)V

    .line 102
    iget-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    sget v1, Lcom/adobe/air/R$id;->companion_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/adobe/air/wand/view/CompanionView;

    iput-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    .line 104
    iget-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionView:Lcom/adobe/air/wand/view/CompanionView;

    invoke-virtual {p1}, Lcom/adobe/air/wand/view/CompanionView;->getTouchSensor()Lcom/adobe/air/wand/view/TouchSensor;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 106
    iput v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public drawImage(Landroid/graphics/Bitmap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    iget v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCompanionViewHolder:Landroid/view/View;

    sget v1, Lcom/adobe/air/R$id;->skin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 158
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    mul-int v2, v2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 164
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    .line 165
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, p1, :cond_1

    const/4 v3, 0x0

    sub-int/2addr v2, p1

    .line 170
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-static {v1, v3, v2, p1, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p1, v1, :cond_2

    .line 173
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 180
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/adobe/air/wand/view/WandViewFlipper$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/adobe/air/wand/view/WandViewFlipper$1;-><init>(Lcom/adobe/air/wand/view/WandViewFlipper;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 151
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Companion view is not yet loaded."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTouchSensor()Lcom/adobe/air/wand/view/TouchSensor;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    return-object v0
.end method

.method public loadCompanionView()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    iget v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 235
    :cond_0
    iput v1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    .line 237
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/wand/view/WandViewFlipper$3;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/view/WandViewFlipper$3;-><init>(Lcom/adobe/air/wand/view/WandViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadDefaultView()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/wand/view/WandViewFlipper$2;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/view/WandViewFlipper$2;-><init>(Lcom/adobe/air/wand/view/WandViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerListener(Lcom/adobe/air/wand/view/WandView$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 260
    iput-object p1, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    return-void

    .line 258
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid view listener"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "View listener is already registered"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScreenOrientation(Lcom/adobe/air/wand/view/WandView$ScreenOrientation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/adobe/air/wand/view/WandViewFlipper$5;->$SwitchMap$com$adobe$air$wand$view$WandView$ScreenOrientation:[I

    invoke-virtual {p1}, Lcom/adobe/air/wand/view/WandView$ScreenOrientation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x0

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wand cannot find activity while loading companion."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterListener()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mListener:Lcom/adobe/air/wand/view/WandView$Listener;

    return-void
.end method

.method public updateConnectionToken(Ljava/lang/String;)V
    .locals 2

    .line 272
    iget v0, p0, Lcom/adobe/air/wand/view/WandViewFlipper;->mCurrentViewIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/wand/view/WandViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/adobe/air/wand/view/WandViewFlipper$4;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/wand/view/WandViewFlipper$4;-><init>(Lcom/adobe/air/wand/view/WandViewFlipper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
