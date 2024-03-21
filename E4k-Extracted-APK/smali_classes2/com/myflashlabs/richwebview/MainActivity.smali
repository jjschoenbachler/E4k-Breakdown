.class public Lcom/myflashlabs/richwebview/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field public static TAG:Ljava/lang/String; = "RichWebView"


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _framelayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private _layoutParamsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private _webviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/myflashlabs/richwebview/MainActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/myflashlabs/richwebview/MainActivity;->initAne()V

    return-void
.end method

.method static synthetic access$100(Lcom/myflashlabs/richwebview/MainActivity;IIII)I
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/myflashlabs/richwebview/MainActivity;->initNewInstance(IIII)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/myflashlabs/richwebview/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/myflashlabs/richwebview/MainActivity;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->addView(I)V

    return-void
.end method

.method private addView(I)V
    .locals 3

    .line 129
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->find_wv(I)Landroid/webkit/WebView;

    move-result-object v0

    .line 130
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->find_fl(I)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 131
    invoke-direct {p0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->find_lp(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    .line 133
    iget-object v2, p0, Lcom/myflashlabs/richwebview/MainActivity;->_activity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private find_fl(I)Landroid/widget/FrameLayout;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MainActivity;->_framelayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private find_lp(I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MainActivity;->_layoutParamsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method private find_wv(I)Landroid/webkit/WebView;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/myflashlabs/richwebview/MainActivity;->_webviewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    return-object p1
.end method

.method private initAne()V
    .locals 1

    .line 101
    iput-object p0, p0, Lcom/myflashlabs/richwebview/MainActivity;->_activity:Landroid/app/Activity;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myflashlabs/richwebview/MainActivity;->_webviewList:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myflashlabs/richwebview/MainActivity;->_framelayoutList:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myflashlabs/richwebview/MainActivity;->_layoutParamsList:Ljava/util/ArrayList;

    return-void
.end method

.method private initNewInstance(IIII)I
    .locals 4

    .line 109
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/myflashlabs/richwebview/MainActivity;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v1, p0, Lcom/myflashlabs/richwebview/MainActivity;->_webviewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lcom/myflashlabs/richwebview/MainActivity;->_webviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 112
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 114
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/myflashlabs/richwebview/MainActivity;->_activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    const/4 v2, 0x0

    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 117
    iget-object v3, p0, Lcom/myflashlabs/richwebview/MainActivity;->_framelayoutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x33

    .line 120
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 122
    iget-object p1, p0, Lcom/myflashlabs/richwebview/MainActivity;->_layoutParamsList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method private toTrace(Ljava/lang/String;)V
    .locals 2

    .line 94
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget p1, Lcom/myflashlabs/richwebview/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->setContentView(I)V

    const/4 p1, 0x1

    .line 33
    sput-boolean p1, Lcom/myflashlab/dependency/overrideAir/MyExtension;->MYFLASHLAB_DEBUGGER:Z

    .line 35
    sget p1, Lcom/myflashlabs/richwebview/R$id;->btn1:I

    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "init ANE"

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 37
    new-instance v0, Lcom/myflashlabs/richwebview/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/myflashlabs/richwebview/MainActivity$1;-><init>(Lcom/myflashlabs/richwebview/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget p1, Lcom/myflashlabs/richwebview/R$id;->btn2:I

    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "init new Webview instance"

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v0, Lcom/myflashlabs/richwebview/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/myflashlabs/richwebview/MainActivity$2;-><init>(Lcom/myflashlabs/richwebview/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget p1, Lcom/myflashlabs/richwebview/R$id;->btn3:I

    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "addView(0);"

    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v0, Lcom/myflashlabs/richwebview/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/myflashlabs/richwebview/MainActivity$3;-><init>(Lcom/myflashlabs/richwebview/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget p1, Lcom/myflashlabs/richwebview/R$id;->btn4:I

    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "btn4"

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v0, Lcom/myflashlabs/richwebview/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/myflashlabs/richwebview/MainActivity$4;-><init>(Lcom/myflashlabs/richwebview/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
