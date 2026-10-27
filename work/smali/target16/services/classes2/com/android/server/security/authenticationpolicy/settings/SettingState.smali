.class public Lcom/android/server/security/authenticationpolicy/settings/SettingState;
.super Ljava/lang/Object;
.source "SettingState.java"


# instance fields
.field public mOriginalValue:Ljava/lang/Object;

.field public final mSecureLockDeviceValue:Ljava/lang/Object;

.field public final mSettingKey:Ljava/lang/String;

.field public final mSettingType:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;Ljava/lang/Object;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mSettingKey:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mSettingType:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    .line 39
    iput-object p3, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mSecureLockDeviceValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOriginalValue()Ljava/lang/Object;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mOriginalValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getSecureLockDeviceValue()Ljava/lang/Object;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mSecureLockDeviceValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getSettingKey()Ljava/lang/String;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mSettingKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSettingType()Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mSettingType:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    return-object p0
.end method

.method public setOriginalValue(Ljava/lang/Object;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mOriginalValue:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mSettingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mSettingType:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Secure lock device value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mSecureLockDeviceValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Original value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->mOriginalValue:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
