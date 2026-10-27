.class Lcom/android/server/wm/ActivityRecord$5;
.super Ljava/lang/Object;
.source "ActivityRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityRecord;

    .line 1185
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$5;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1189
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$5;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->finishAndRemoveSplashScreen()V

    .line 1190
    return-void
.end method
