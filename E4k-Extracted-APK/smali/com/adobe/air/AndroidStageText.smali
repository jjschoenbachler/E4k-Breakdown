.class public Lcom/adobe/air/AndroidStageText;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidStageText$RestrictFilter;,
        Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;,
        Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;,
        Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;
    }
.end annotation


# static fields
.field private static final ALIGN_Center:I = 0x2

.field private static final ALIGN_End:I = 0x5

.field private static final ALIGN_Justify:I = 0x3

.field private static final ALIGN_Left:I = 0x0

.field private static final ALIGN_Right:I = 0x1

.field private static final ALIGN_Start:I = 0x4

.field private static final AUTO_CAP_All:I = 0x3

.field private static final AUTO_CAP_None:I = 0x0

.field private static final AUTO_CAP_Sentence:I = 0x2

.field private static final AUTO_CAP_Word:I = 0x1

.field private static final FOCUS_DOWN:I = 0x3

.field private static final FOCUS_NONE:I = 0x1

.field private static final FOCUS_UP:I = 0x2

.field private static FontMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEYBOARDTYPE_Contact:I = 0x4

.field private static final KEYBOARDTYPE_DecimalPad:I = 0x7

.field private static final KEYBOARDTYPE_Default:I = 0x0

.field private static final KEYBOARDTYPE_Email:I = 0x5

.field private static final KEYBOARDTYPE_Number:I = 0x3

.field private static final KEYBOARDTYPE_Phone:I = 0x6

.field private static final KEYBOARDTYPE_Punctuation:I = 0x1

.field private static final KEYBOARDTYPE_Url:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidStageText"

.field private static MapCreate:Z = false

.field private static final RETURN_KEY_Default:I = 0x0

.field private static final RETURN_KEY_Done:I = 0x1

.field private static final RETURN_KEY_Go:I = 0x2

.field private static final RETURN_KEY_Next:I = 0x3

.field private static final RETURN_KEY_Search:I = 0x4


# instance fields
.field private enterKeyDispatched:Z

.field private mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mAlign:I

.field private mAutoCapitalize:I

.field private mAutoCorrect:Z

.field private mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

.field private mBackgroundColor:I

.field private mBold:Z

.field private mBorderColor:I

.field private mBounds:Landroid/graphics/Rect;

.field private mClip:Landroid/view/ViewGroup;

.field private mClipBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDisableInteraction:Z

.field private mDisplayAsPassword:Z

.field private mEditable:Z

.field private mFont:Ljava/lang/String;

.field private mFontSize:I

.field private mGlobalBounds:Landroid/graphics/Rect;

.field private mInContentMenu:Z

.field private mInternalReference:J

.field private mItalic:Z

.field private mKeyboardType:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLocale:Ljava/lang/String;

.field private mMaxChars:I

.field private mMenuInvoked:Z

.field private mMultiline:Z

.field private mNotifyLayoutComplete:Z

.field private mPreventDefault:Z

.field private mRestrict:Ljava/lang/String;

.field private mReturnKeyLabel:I

.field private mSavedKeyListener:Landroid/text/method/KeyListener;

.field private mScaleFactor:D

.field private mSelectionChanged:Z

.field private mTextColor:I

.field private mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

.field private mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

.field private mViewBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/air/AndroidStageText;->FontMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 117
    sput-boolean v0, Lcom/adobe/air/AndroidStageText;->MapCreate:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 9

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    const/4 v1, 0x0

    .line 1735
    iput-object v1, p0, Lcom/adobe/air/AndroidStageText;->mClip:Landroid/view/ViewGroup;

    .line 1737
    iput v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    .line 1738
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    .line 1739
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    .line 1740
    iput v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    .line 1741
    iput v0, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    .line 1742
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    .line 1743
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    .line 1744
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    const/4 v2, 0x1

    .line 1745
    iput-boolean v2, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    .line 1746
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    const/4 v3, 0x4

    .line 1749
    iput v3, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    const/high16 v3, -0x1000000

    .line 1750
    iput v3, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    const/4 v4, -0x1

    .line 1751
    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mBackgroundColor:I

    .line 1752
    iput v3, p0, Lcom/adobe/air/AndroidStageText;->mBorderColor:I

    .line 1754
    iput v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    .line 1755
    iput-object v1, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    .line 1756
    iput-object v1, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    .line 1757
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mPreventDefault:Z

    .line 1758
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 1759
    iput-object v1, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    .line 1760
    iput-object v1, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 1761
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 1762
    iput-object v1, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    .line 1763
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    .line 1764
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    .line 1765
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    .line 1766
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 1767
    iput-wide v5, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    .line 582
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    .line 583
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    const-wide/16 v5, 0x0

    .line 584
    iput-wide v5, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    .line 585
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    .line 586
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    return-void

    .line 587
    :cond_0
    new-instance v3, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;-><init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    .line 588
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v3, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setFillViewport(Z)V

    .line 593
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_1

    .line 595
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v3, v2, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setLayerType(ILandroid/graphics/Paint;)V

    .line 597
    :cond_1
    new-instance v3, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;-><init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    .line 598
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/high16 v5, 0x12000000

    invoke-virtual {v3, v5}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setImeOptions(I)V

    .line 599
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    const/16 v3, 0xc

    .line 600
    invoke-virtual {p0, v3}, Lcom/adobe/air/AndroidStageText;->setFontSize(I)V

    .line 601
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 602
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v6}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p1, :cond_2

    .line 605
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setSingleLine(Z)V

    goto :goto_0

    .line 609
    :cond_2
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 610
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setHorizontallyScrolling(Z)V

    .line 612
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    .line 616
    sget-boolean p1, Lcom/adobe/air/AndroidStageText;->MapCreate:Z

    if-nez p1, :cond_3

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->embeddedFonts()Z

    move-result p1

    if-nez p1, :cond_3

    .line 617
    sput-boolean v2, Lcom/adobe/air/AndroidStageText;->MapCreate:Z

    .line 620
    :cond_3
    sget-boolean p1, Lcom/adobe/air/AndroidStageText;->MapCreate:Z

    if-nez p1, :cond_6

    .line 621
    sput-boolean v2, Lcom/adobe/air/AndroidStageText;->MapCreate:Z

    .line 623
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "customEmbeddedFonts"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 624
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 626
    array-length v1, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    aget-object v4, p1, v3

    .line 627
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "customEmbeddedFonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 630
    :try_start_1
    iget-object v6, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v6, 0x2e

    .line 634
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ttf"

    .line 635
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "otf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 638
    :cond_4
    iget-object v7, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 640
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 641
    sget-object v6, Lcom/adobe/air/AndroidStageText;->FontMap:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 645
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidStageText;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    return p0
.end method

.method static synthetic access$002(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidStageText;)J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AndroidStageText;J)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/air/AndroidStageText;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/adobe/air/AndroidStageText;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/adobe/air/AndroidStageText;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/adobe/air/AndroidStageText;JII)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/adobe/air/AndroidStageText;J)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->dispatchCompleteEvent(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/adobe/air/AndroidStageText;JI)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidStageText;->dispatchFocusIn(JI)V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/air/AndroidStageText;J)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->dispatchChangeEvent(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/air/AndroidStageText;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    return p0
.end method

.method static synthetic access$902(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    return p1
.end method

.method private applyFilters()V
    .locals 5

    .line 1433
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1434
    :goto_0
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1436
    :cond_1
    new-array v0, v0, [Landroid/text/InputFilter;

    .line 1440
    iget v3, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eqz v3, :cond_2

    .line 1442
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v1

    const/4 v1, 0x1

    .line 1445
    :cond_2
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1447
    new-instance v2, Lcom/adobe/air/AndroidStageText$RestrictFilter;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;-><init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1450
    :cond_3
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private native dispatchChangeEvent(J)V
.end method

.method private native dispatchCompleteEvent(J)V
.end method

.method private native dispatchFocusIn(JI)V
.end method

.method private native dispatchFocusOut(JI)V
.end method

.method private getShapeForBounds(Landroid/graphics/Rect;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 2

    .line 1125
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 1126
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    return-object v0
.end method

.method private native handleKeyEvent(JII)Z
.end method

.method private native invokeSoftKeyboard(J)V
.end method

.method private refreshGlobalBounds(Z)V
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    if-nez v0, :cond_0

    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    new-instance v1, Lcom/adobe/air/AndroidStageText$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$2;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setInputType()V
    .locals 3

    .line 987
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 989
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    if-ne v0, v1, :cond_0

    const/16 v1, 0x12

    goto :goto_0

    :cond_0
    const/16 v1, 0x81

    goto :goto_0

    .line 1000
    :cond_1
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x2002

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x21

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x11

    :goto_0
    :pswitch_5
    and-int/lit8 v0, v1, 0xf

    if-ne v0, v2, :cond_3

    .line 1024
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    if-eqz v0, :cond_2

    const v0, 0x8000

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_2

    :cond_2
    const/high16 v0, 0x80000

    or-int/2addr v0, v1

    goto :goto_1

    .line 1032
    :goto_2
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    if-eqz v0, :cond_3

    .line 1034
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_6
    or-int/lit16 v1, v1, 0x1000

    goto :goto_3

    :pswitch_7
    or-int/lit16 v1, v1, 0x4000

    goto :goto_3

    :pswitch_8
    or-int/lit16 v1, v1, 0x2000

    .line 1047
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x20000

    or-int/2addr v1, v0

    .line 1049
    :cond_4
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setRawInputType(I)V

    .line 1050
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public addToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 4

    .line 689
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->removeFromStage()V

    .line 692
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 694
    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    .line 695
    invoke-virtual {p1, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    const/4 v0, 0x1

    .line 696
    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    .line 697
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    new-instance v0, Lcom/adobe/air/AndroidStageText$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidStageText$1;-><init>(Lcom/adobe/air/AndroidStageText;)V

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public adjustViewBounds(DDDDD)V
    .locals 3

    .line 883
    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, p1

    double-to-int v2, p3

    add-double/2addr p1, p5

    double-to-int p1, p1

    add-double/2addr p3, p7

    double-to-int p2, p3

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    .line 884
    iget-wide p1, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    cmpl-double p3, p9, p1

    if-eqz p3, :cond_0

    .line 886
    iput-wide p9, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    .line 887
    iget p1, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidStageText;->setFontSize(I)V

    .line 890
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 891
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mClip:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 893
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 895
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 898
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public assignFocus()V
    .locals 3

    .line 1613
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->requestFocus()Z

    .line 1615
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mPreventDefault:Z

    if-nez v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 1620
    :cond_0
    iget-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V

    return-void
.end method

.method public captureSnapshot(II)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-object v0

    .line 1686
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1687
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1688
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1691
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1692
    iget-wide v1, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    .line 1693
    iget-wide v1, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    double-to-float v1, v1

    iget-wide v5, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    div-double/2addr v3, v5

    double-to-float v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1696
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->isHorizontalScrollBarEnabled()Z

    move-result v1

    .line 1697
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->isVerticalScrollBarEnabled()Z

    move-result v2

    .line 1700
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1701
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v3, v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVerticalScrollBarEnabled(Z)V

    .line 1706
    :try_start_0
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v3, p2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    .line 1712
    :goto_0
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {p2, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1713
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {p2, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVerticalScrollBarEnabled(Z)V

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public clearFocus()V
    .locals 3

    .line 1628
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->clearFocus()V

    .line 1631
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 1642
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-eqz v0, :cond_1

    .line 1643
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public clearRestrict()V
    .locals 1

    const/4 v0, 0x0

    .line 1461
    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    .line 1462
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    return-void
.end method

.method public destroyInternals()V
    .locals 2

    .line 676
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->removeFromStage()V

    const-wide/16 v0, 0x0

    .line 678
    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    .line 680
    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 681
    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    return-void
.end method

.method public getAlign()I
    .locals 1

    .line 1508
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    return v0
.end method

.method public getAutoCapitalize()I
    .locals 1

    .line 1190
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1140
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgColor:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBorderColor:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 1547
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    return v0
.end method

.method public getKeyboardType()I
    .locals 1

    .line 957
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxChars()I
    .locals 1

    .line 1473
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    return v0
.end method

.method public getPreventDefault()Z
    .locals 1

    .line 1498
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mPreventDefault:Z

    return v0
.end method

.method public getRestrict()Ljava/lang/String;
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnKeyLabel()I
    .locals 1

    .line 1207
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    return v0
.end method

.method public getSelectionActiveIndex()I
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getSelectionAnchorIndex()I
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1119
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    return v0
.end method

.method public isContextValid()Z
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public removeClip()V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 918
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 919
    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 920
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    const/4 v0, 0x1

    .line 921
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public removeFromStage()V
    .locals 3

    .line 751
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 754
    iput-object v1, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->didRemoveOverlay()V

    .line 762
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 764
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V

    .line 766
    :cond_1
    iput-object v1, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-void
.end method

.method public resetGlobalBounds()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 844
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public selectRange(II)V
    .locals 2

    .line 1650
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    if-le p2, v0, :cond_3

    move p2, v0

    .line 1659
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setSelection(II)V

    .line 1660
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setAlign(I)V
    .locals 1

    .line 1514
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1525
    :pswitch_1
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    .line 1522
    :pswitch_2
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    .line 1518
    :pswitch_3
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    .line 1530
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoCapitalize(I)V
    .locals 1

    .line 1180
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    if-eq v0, p1, :cond_0

    .line 1182
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    .line 1183
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    :cond_0
    return-void
.end method

.method public setAutoCorrect(Z)V
    .locals 1

    .line 1196
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    if-eq v0, p1, :cond_0

    .line 1198
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    .line 1199
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    :cond_0
    return-void
.end method

.method public setBackground(Z)V
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget-boolean v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    if-eq v0, p1, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iput-boolean p1, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    .line 1149
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(IIII)V
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->setBkgColor(I)V

    .line 1134
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setBold(Z)V
    .locals 0

    .line 1554
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    .line 1555
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    return-void
.end method

.method public setBorder(Z)V
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget-boolean v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    if-eq v0, p1, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iput-boolean p1, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    .line 1173
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderColor(IIII)V
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->setBorderColor(I)V

    .line 1157
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setClipBounds(DDDD)V
    .locals 3

    .line 907
    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, p1

    double-to-int v2, p3

    add-double/2addr p1, p5

    double-to-int p1, p1

    add-double/2addr p3, p7

    double-to-int p2, p3

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 908
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 909
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    const/4 p1, 0x1

    .line 910
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    return-void
.end method

.method public setDisableInteraction(Z)V
    .locals 4

    .line 1079
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    .line 1083
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 1084
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1088
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v2, v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1089
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1090
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_1

    .line 1094
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-boolean v3, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v3, :cond_1

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1095
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1096
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    :cond_2
    invoke-virtual {p1, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1100
    iget-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz p1, :cond_3

    .line 1101
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setDisplayAsPassword(Z)V
    .locals 1

    .line 965
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    if-eqz p1, :cond_0

    .line 968
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 970
    :cond_0
    iget-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    if-nez p1, :cond_1

    .line 972
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 976
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 980
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    return-void
.end method

.method public setEditable(Z)V
    .locals 3

    .line 1056
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eq p1, v0, :cond_2

    .line 1058
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    .line 1059
    iget-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-nez p1, :cond_2

    .line 1063
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object p1

    .line 1064
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1065
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1066
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1068
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1069
    iget-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz p1, :cond_2

    .line 1070
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    :cond_2
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0

    .line 1569
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mFont:Ljava/lang/String;

    .line 1571
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    return-void
.end method

.method public setFontSize(I)V
    .locals 4

    .line 1537
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    int-to-double v0, p1

    .line 1538
    iget-wide v2, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    .line 1540
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTextSize(IF)V

    .line 1541
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setInternalReference(J)V
    .locals 0

    .line 669
    iput-wide p1, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    .line 1562
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    .line 1563
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    return-void
.end method

.method public setKeyboardType(I)V
    .locals 0

    .line 951
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    .line 952
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 1493
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    return-void
.end method

.method public setMaxChars(I)V
    .locals 1

    .line 1478
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eq p1, v0, :cond_0

    .line 1480
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    .line 1481
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    :cond_0
    return-void
.end method

.method public setPreventDefault(Z)V
    .locals 0

    .line 1503
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mPreventDefault:Z

    return-void
.end method

.method public setRestrict(Ljava/lang/String;)V
    .locals 0

    .line 1467
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    .line 1468
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    return-void
.end method

.method public setReturnKeyLabel(I)V
    .locals 1

    .line 1217
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    :goto_0
    :pswitch_4
    const/high16 p1, 0x12000000

    or-int/2addr p1, v0

    .line 1237
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setImeOptions(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    .line 929
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 930
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 931
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v2, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-nez v2, :cond_0

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {v1, p1, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 932
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setTextColor(IIII)V
    .locals 0

    .line 1111
    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    .line 1112
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget p2, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    invoke-virtual {p1, p2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTextColor(I)V

    .line 1114
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 773
    :goto_0
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 776
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 778
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {p1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    :cond_1
    return-void
.end method

.method public updateTypeface()V
    .locals 3

    .line 1578
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1579
    :goto_0
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 1581
    :cond_1
    sget-object v1, Lcom/adobe/air/AndroidStageText;->FontMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mFont:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 1583
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 1586
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mFont:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1589
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1599
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 1596
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1606
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateViewBoundsWithKeyboard(I)J
    .locals 6

    .line 786
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 788
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 791
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v3}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 793
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 798
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 799
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const-wide/16 v3, 0x0

    if-ne v2, p1, :cond_0

    return-wide v3

    .line 808
    :cond_0
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v5

    if-gtz p1, :cond_1

    return-wide v3

    :cond_1
    if-gt p1, v2, :cond_2

    goto :goto_0

    .line 829
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 830
    iget-object p1, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    move p1, v2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 836
    :goto_0
    invoke-direct {p0, v1}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    int-to-long v0, p1

    return-wide v0
.end method
