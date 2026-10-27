.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->$r8$lambda$4889UMx4BwcOP2mn_3XT61FNJx8(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method
