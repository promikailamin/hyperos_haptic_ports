.class public interface abstract Lcom/android/server/security/authenticationpolicy/settings/SettingController;
.super Ljava/lang/Object;
.source "SettingController.java"


# virtual methods
.method public abstract applySecureLockDeviceValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
.end method

.method public abstract deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract restoreFromOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
.end method

.method public abstract serializeOriginalValue(Ljava/lang/String;Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
.end method

.method public abstract storeOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
.end method
