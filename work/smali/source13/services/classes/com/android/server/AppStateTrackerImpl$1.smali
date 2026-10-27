.class Lcom/android/server/AppStateTrackerImpl$1;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppStateTrackerImpl;->addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;

.field final synthetic val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/AppStateTrackerImpl;

    .line 179
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$1;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iput-object p2, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 183
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;->updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V

    .line 184
    return-void
.end method
