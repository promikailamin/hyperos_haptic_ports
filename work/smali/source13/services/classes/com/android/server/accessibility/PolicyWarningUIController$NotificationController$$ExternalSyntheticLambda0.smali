.class public final synthetic Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->lambda$cancelSentNotifications$0$com-android-server-accessibility-PolicyWarningUIController$NotificationController(Landroid/content/ComponentName;)V

    return-void
.end method
