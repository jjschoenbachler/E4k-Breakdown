.class Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ActiveNotificationsArgs;
.super Ljava/lang/Object;
.source "TrustedWebActivityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/TrustedWebActivityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveNotificationsArgs"
.end annotation


# instance fields
.field public final notifications:[Landroid/os/Parcelable;


# direct methods
.method constructor <init>([Landroid/os/Parcelable;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ActiveNotificationsArgs;->notifications:[Landroid/os/Parcelable;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ActiveNotificationsArgs;
    .locals 2

    const-string v0, "android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS"

    .line 275
    invoke-static {p0, v0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection;->ensureBundleContains(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 276
    new-instance v0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ActiveNotificationsArgs;

    const-string v1, "android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ActiveNotificationsArgs;-><init>([Landroid/os/Parcelable;)V

    return-object v0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS"

    .line 281
    iget-object v2, p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$ActiveNotificationsArgs;->notifications:[Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v0
.end method