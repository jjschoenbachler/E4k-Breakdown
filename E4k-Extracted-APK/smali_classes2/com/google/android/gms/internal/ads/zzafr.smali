.class public final Lcom/google/android/gms/internal/ads/zzafr;
.super Ljava/lang/RuntimeException;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Detaching surface timed out."

    goto :goto_0

    :pswitch_0
    const-string p1, "Setting foreground mode timed out."

    goto :goto_0

    :pswitch_1
    const-string p1, "Player release timed out."

    .line 1
    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
