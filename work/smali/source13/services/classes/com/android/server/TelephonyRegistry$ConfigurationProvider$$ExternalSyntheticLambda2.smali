.class public final synthetic Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;->lambda$getRegistrationLimit$0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
