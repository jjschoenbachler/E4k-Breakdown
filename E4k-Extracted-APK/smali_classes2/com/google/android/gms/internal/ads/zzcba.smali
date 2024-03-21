.class public abstract Lcom/google/android/gms/internal/ads/zzcba;
.super Lcom/google/android/gms/internal/ads/zzadk;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcbb;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzbz(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    .line 3
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 4
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzcbf;

    if-eqz v0, :cond_1

    .line 5
    check-cast p4, Lcom/google/android/gms/internal/ads/zzcbf;

    goto :goto_0

    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzcbd;

    .line 6
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzcbd;-><init>(Landroid/os/IBinder;)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcba;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcbf;)V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 9
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcbj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzadl;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p4, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    .line 11
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 12
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzcbf;

    if-eqz v0, :cond_3

    .line 13
    check-cast p4, Lcom/google/android/gms/internal/ads/zzcbf;

    goto :goto_1

    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/ads/zzcbd;

    .line 14
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzcbd;-><init>(Landroid/os/IBinder;)V

    .line 15
    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcba;->zzg(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzcbf;)V

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_5

    .line 17
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcbj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzadl;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const-string p4, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    .line 19
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 20
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzcbf;

    if-eqz v0, :cond_5

    .line 21
    check-cast p4, Lcom/google/android/gms/internal/ads/zzcbf;

    goto :goto_2

    :cond_5
    new-instance p4, Lcom/google/android/gms/internal/ads/zzcbd;

    .line 22
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzcbd;-><init>(Landroid/os/IBinder;)V

    .line 23
    :goto_2
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcba;->zzf(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzcbf;)V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    .line 25
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcbj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzadl;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    const-string p4, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener"

    .line 27
    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    .line 28
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzcbf;

    if-eqz v0, :cond_7

    .line 29
    check-cast p4, Lcom/google/android/gms/internal/ads/zzcbf;

    goto :goto_3

    :cond_7
    new-instance p4, Lcom/google/android/gms/internal/ads/zzcbd;

    .line 30
    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzcbd;-><init>(Landroid/os/IBinder;)V

    .line 31
    :goto_3
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcba;->zze(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzcbf;)V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    .line 33
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcav;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzadl;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcav;

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const-string p2, "com.google.android.gms.ads.internal.request.IAdResponseListener"

    .line 35
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 36
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzcbc;

    if-eqz p4, :cond_9

    .line 37
    check-cast p2, Lcom/google/android/gms/internal/ads/zzcbc;

    goto :goto_4

    :cond_9
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcbc;

    .line 38
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzcbc;-><init>(Landroid/os/IBinder;)V

    .line 39
    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_5

    .line 40
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcav;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzadl;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcav;

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzadl;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :goto_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
