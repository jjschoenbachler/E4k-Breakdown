.class Lcom/adobe/air/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/OrientationManager$EAspectRatio;,
        Lcom/adobe/air/OrientationManager$EDefault;,
        Lcom/adobe/air/OrientationManager$EOrientation;
    }
.end annotation


# static fields
.field private static final AIR_NAMESPACE_VERSION_3_3:F = 3.3f

.field private static final AIR_NAMESPACE_VERSION_3_8:F = 3.8f

.field private static final LOG_TAG:Ljava/lang/String; = "OrientationManager"

.field private static sMgr:Lcom/adobe/air/OrientationManager;


# instance fields
.field public mAfterOrientation:I

.field private mAutoOrients:Z

.field public mBeforeOrientation:I

.field private mDeviceDefault:I

.field private mDeviceOrientation:I

.field public mDispatchOrientationChangePending:Z

.field private mFinalOrientation:I

.field private mFirstCreate:Z

.field private mHardKeyboardHidden:I

.field private mNamespaceVersion:F

.field private mOldDeviceOrientation:I

.field private mOrientation:I

.field private mOrientationEventListner:Landroid/view/OrientationEventListener;

.field private mOsDefaultOrientation:I

.field private mOsReversedOrientation:I

.field private mOsRotatedLeftOrientation:I

.field private mOsRotatedRightOrientation:I

.field private mRequestedAspectRatio:I

.field private mSetOrientation:Z

.field private mView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private m_activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    .line 46
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 48
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    .line 49
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    .line 50
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    .line 51
    sget-object v1, Lcom/adobe/air/OrientationManager$EDefault;->PORTRAIT:Lcom/adobe/air/OrientationManager$EDefault;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EDefault;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceDefault:I

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    .line 53
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    const/4 v2, 0x2

    .line 54
    iput v2, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    const/4 v2, 0x0

    .line 56
    iput-object v2, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    .line 57
    iput-object v2, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 59
    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    .line 60
    iput v1, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    const/16 v0, 0x8

    .line 61
    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    const/16 v0, 0x9

    .line 62
    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    .line 66
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/adobe/air/OrientationManager;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    return p0
.end method

.method static synthetic access$102(Lcom/adobe/air/OrientationManager;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/air/OrientationManager;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    return p0
.end method

.method static synthetic access$300(Lcom/adobe/air/OrientationManager;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    return p0
.end method

.method static synthetic access$302(Lcom/adobe/air/OrientationManager;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    return p1
.end method

.method static synthetic access$400(Lcom/adobe/air/OrientationManager;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    return p0
.end method

.method static synthetic access$402(Lcom/adobe/air/OrientationManager;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    return p1
.end method

.method static synthetic access$500(Lcom/adobe/air/OrientationManager;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->isReOrientingAllowed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/adobe/air/OrientationManager;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->setSensorBasedOrientation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$702(Lcom/adobe/air/OrientationManager;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/air/OrientationManager;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    return p0
.end method

.method static synthetic access$802(Lcom/adobe/air/OrientationManager;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/air/OrientationManager;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    return p0
.end method

.method private applyLastOrientation()V
    .locals 4

    .line 755
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    const v1, 0x40533333    # 3.3f

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 757
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    goto/16 :goto_2

    .line 760
    :cond_1
    :goto_0
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setOrientation(I)V

    goto :goto_2

    .line 773
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    iget v3, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    return-void

    .line 779
    :cond_3
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    .line 781
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    .line 782
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    .line 785
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    if-eq v0, v1, :cond_7

    .line 788
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 790
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v3, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {p0, v0, v3}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanging(II)Z

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 794
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    goto :goto_2

    .line 798
    :cond_5
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 800
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 803
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v0

    iget-object v3, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v3}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 805
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {p0, v0, v2}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 806
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    goto :goto_2

    .line 810
    :cond_6
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    :cond_7
    :goto_2
    return-void
.end method

.method private getCurrentOrientation()I
    .locals 3

    .line 624
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 626
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    return v0

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-nez v1, :cond_1

    .line 633
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 637
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 641
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 645
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    :cond_4
    :goto_0
    return v0
.end method

.method public static getOrientationManager()Lcom/adobe/air/OrientationManager;
    .locals 1

    .line 81
    sget-object v0, Lcom/adobe/air/OrientationManager;->sMgr:Lcom/adobe/air/OrientationManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/adobe/air/OrientationManager;

    invoke-direct {v0}, Lcom/adobe/air/OrientationManager;-><init>()V

    sput-object v0, Lcom/adobe/air/OrientationManager;->sMgr:Lcom/adobe/air/OrientationManager;

    .line 84
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager;->sMgr:Lcom/adobe/air/OrientationManager;

    return-object v0
.end method

.method private isReOrientingAllowed()Z
    .locals 4

    .line 95
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const/4 v1, 0x1

    const v2, 0x40533333    # 3.3f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 97
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne v0, v1, :cond_2

    .line 99
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 101
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    .line 104
    iget v2, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    iget v3, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v2, v3, :cond_0

    .line 106
    iget v2, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    .line 107
    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 113
    :cond_0
    iget v2, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    .line 114
    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private setDeviceDefault()V
    .locals 6

    .line 656
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 658
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 659
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    const/16 v2, 0x9

    const/16 v5, 0x8

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    .line 664
    :cond_4
    iput v4, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    .line 665
    iput v3, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    .line 666
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_5

    .line 668
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    .line 669
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    goto :goto_3

    .line 673
    :cond_5
    iput v5, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    .line 674
    iput v2, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    goto :goto_3

    .line 679
    :cond_6
    iput v3, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    .line 680
    iput v4, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    .line 681
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_7

    .line 683
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    .line 684
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    goto :goto_3

    .line 688
    :cond_7
    iput v2, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    .line 689
    iput v5, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    :goto_3
    return-void
.end method

.method private setOrientationParamsFromMetaData()V
    .locals 4

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 700
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "autoOrients"

    .line 706
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const-string v2, "aspectRatio"

    .line 707
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "namespaceVersion"

    .line 714
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    if-eqz v2, :cond_2

    const-string v0, "portrait"

    .line 720
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->PORTRAIT:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAspectRatio(I)V

    goto :goto_0

    :cond_1
    const-string v0, "landscape"

    .line 724
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 726
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->LANDSCAPE:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAspectRatio(I)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 730
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 732
    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    goto :goto_1

    .line 736
    :cond_3
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const/4 v1, 0x0

    const v3, 0x40733333    # 3.8f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    if-eqz v2, :cond_4

    const-string v0, "any"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 738
    :cond_4
    invoke-virtual {p0, v1}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    goto :goto_1

    .line 740
    :cond_5
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    if-nez v2, :cond_6

    .line 742
    invoke-virtual {p0, v1}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_1
    return-void
.end method

.method private setSensorBasedOrientation()Z
    .locals 5

    .line 143
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 145
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    iget-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne v3, v2, :cond_8

    .line 149
    iget-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    const v4, 0x40533333    # 3.3f

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 150
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    :cond_1
    if-eqz v0, :cond_7

    .line 152
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_7

    .line 159
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    iget v3, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v0, v3, :cond_3

    .line 161
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 163
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 166
    :cond_2
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v3, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v3}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_8

    .line 168
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 175
    :cond_3
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    :goto_1
    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    goto :goto_1

    .line 178
    :goto_2
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    if-ne v1, v0, :cond_5

    .line 180
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 184
    :cond_5
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v0, v2, :cond_6

    .line 186
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 199
    :cond_7
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    return v2
.end method


# virtual methods
.method public enableEventListener(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 347
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->mOrientationEventListner:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->mOrientationEventListner:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method public getAutoOrients()Z
    .locals 1

    .line 586
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    return v0
.end method

.method public getDeviceOrientation()I
    .locals 2

    .line 415
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 417
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v0, v1, :cond_0

    .line 419
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    return v0

    .line 423
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    return v0

    .line 428
    :cond_1
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 406
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 407
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    return v0
.end method

.method public getSupportedOrientations()[I
    .locals 5

    .line 593
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-gt v0, v4, :cond_1

    .line 595
    new-array v0, v1, [I

    .line 597
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v1, v3, :cond_0

    .line 599
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v2

    .line 600
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    .line 604
    :cond_0
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v2

    .line 605
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 610
    new-array v0, v0, [I

    .line 611
    sget-object v4, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v4}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v4

    aput v4, v0, v2

    .line 612
    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    aput v2, v0, v3

    .line 613
    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 614
    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    aput v2, v0, v1

    :goto_0
    return-object v0
.end method

.method public native nativeOrientationChanged(II)V
.end method

.method public native nativeOrientationChanging(II)Z
.end method

.method public onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 2

    .line 211
    iput-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    .line 212
    iput-object p2, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 215
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    .line 218
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->setDeviceDefault()V

    .line 221
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->setOrientationParamsFromMetaData()V

    .line 224
    :cond_0
    new-instance p1, Lcom/adobe/air/OrientationManager$1;

    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lcom/adobe/air/OrientationManager$1;-><init>(Lcom/adobe/air/OrientationManager;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/adobe/air/OrientationManager;->mOrientationEventListner:Landroid/view/OrientationEventListener;

    .line 313
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->isScreenOn()Z

    move-result v0

    if-ne v0, p2, :cond_2

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->isScreenLocked()Z

    move-result p1

    if-nez p1, :cond_2

    .line 317
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    if-nez p1, :cond_1

    .line 319
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->applyLastOrientation()V

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result p1

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    :cond_2
    const/4 p1, 0x0

    .line 325
    iput-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    return-void
.end method

.method public onActivityDestroyed()V
    .locals 1

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityPaused()V
    .locals 1

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->enableEventListener(Z)V

    return-void
.end method

.method public onActivityResumed()V
    .locals 1

    const/4 v0, 0x1

    .line 336
    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->enableEventListener(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 355
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    .line 356
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    .line 363
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 365
    iget p1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    .line 366
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne p1, v3, :cond_1

    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    if-ne p1, v3, :cond_1

    .line 368
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 370
    :cond_0
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 374
    :cond_1
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    if-eq p1, v0, :cond_4

    .line 379
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget p1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    if-eq p1, v0, :cond_2

    return-void

    .line 383
    :cond_2
    sget-object p1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {p1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    .line 385
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 387
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 390
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result p1

    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 392
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {p0, p1, v0}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 393
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    goto :goto_0

    .line 397
    :cond_3
    iput-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 526
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v1, 0x40533333    # 3.3f

    const/4 v2, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 527
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 529
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->PORTRAIT:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 531
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 532
    iput v2, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    goto :goto_0

    .line 534
    :cond_1
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->LANDSCAPE:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 536
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 537
    iput v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 542
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    .line 547
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne p1, v2, :cond_3

    .line 549
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 554
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result p1

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    :cond_4
    return-void
.end method

.method public setAutoOrients(Z)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 566
    :cond_0
    iput-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    .line 568
    iget-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 570
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v0, 0x40533333    # 3.3f

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 572
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 578
    :cond_2
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setNearestOrientation(I)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 498
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 500
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 502
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 504
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 506
    :cond_1
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 508
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 510
    :cond_2
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 512
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 4

    .line 435
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 437
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-le v1, v3, :cond_0

    .line 439
    invoke-virtual {p0, p1}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    .line 440
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 441
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result p1

    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    goto :goto_1

    .line 451
    :cond_0
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2

    .line 453
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    .line 455
    iget p1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne p1, v2, :cond_1

    .line 457
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 463
    :goto_0
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    goto :goto_1

    .line 466
    :cond_2
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 468
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne p1, v2, :cond_4

    .line 470
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 471
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    goto :goto_1

    .line 474
    :cond_3
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 476
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-nez p1, :cond_4

    .line 478
    iget-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 479
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 484
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result p1

    .line 485
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v2, 0x40733333    # 3.8f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_5

    if-eq p1, v0, :cond_5

    .line 487
    invoke-virtual {p0, v0, p1}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    :cond_5
    return-void
.end method
