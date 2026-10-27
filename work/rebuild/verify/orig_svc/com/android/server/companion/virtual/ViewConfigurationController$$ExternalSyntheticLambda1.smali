.class public final synthetic Lcom/android/server/companion/virtual/ViewConfigurationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/companion/virtual/ViewConfigurationController$SettingsWriter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
