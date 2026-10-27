.class Lmiui/security/WakePathRuleInfo$1;
.super Ljava/lang/Object;
.source "WakePathRuleInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/WakePathRuleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiui/security/WakePathRuleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lmiui/security/WakePathRuleInfo$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/security/WakePathRuleInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;)Lmiui/security/WakePathRuleInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 117
    new-instance v0, Lmiui/security/WakePathRuleInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/security/WakePathRuleInfo;-><init>(Landroid/os/Parcel;Lmiui/security/WakePathRuleInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lmiui/security/WakePathRuleInfo$1;->newArray(I)[Lmiui/security/WakePathRuleInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lmiui/security/WakePathRuleInfo;
    .registers 3
    .param p1, "size"    # I

    .line 121
    new-array v0, p1, [Lmiui/security/WakePathRuleInfo;

    return-object v0
.end method
