.class public final Ljmp;
.super Lcbe;

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-direct {p0, p1, v0}, Lcbe;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final e(Ljnc;)V
    .locals 1

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x3b

    invoke-virtual {p0, p1, v0}, Lcbe;->z(ILandroid/os/Parcel;)V

    return-void
.end method
