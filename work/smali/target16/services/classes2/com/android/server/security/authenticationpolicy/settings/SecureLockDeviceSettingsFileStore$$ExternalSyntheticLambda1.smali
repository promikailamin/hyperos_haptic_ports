.class public final synthetic Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/modules/utils/TypedXmlSerializer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/modules/utils/TypedXmlSerializer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/modules/utils/TypedXmlSerializer;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    invoke-static {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->$r8$lambda$tGviLzNtjnUnsZ8XfqzOgoc2n3c(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;)V

    return-void
.end method
