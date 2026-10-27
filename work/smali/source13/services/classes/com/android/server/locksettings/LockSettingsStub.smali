.class public Lcom/android/server/locksettings/LockSettingsStub;
.super Ljava/lang/Object;
.source "LockSettingsStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/locksettings/LockSettingsStub;
    .registers 1

    .line 7
    const-class v0, Lcom/android/server/locksettings/LockSettingsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStub;

    return-object v0
.end method


# virtual methods
.method public checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 12
    return-void
.end method
