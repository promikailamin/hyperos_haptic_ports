.class public Lcom/android/server/power/PowerManagerService$Injector$3;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/PowerManagerService$PowerPropertiesWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$Injector;)V
    .registers 2

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public permissionless_turn_screen_on()Z
    .registers 2

    .line 1155
    invoke-static {}, Landroid/sysprop/PowerProperties;->permissionless_turn_screen_on()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public waive_target_sdk_check_for_turn_screen_on()Z
    .registers 2

    .line 1149
    invoke-static {}, Landroid/sysprop/PowerProperties;->waive_target_sdk_check_for_turn_screen_on()Ljava/util/Optional;

    move-result-object p0

    .line 1150
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1149
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
