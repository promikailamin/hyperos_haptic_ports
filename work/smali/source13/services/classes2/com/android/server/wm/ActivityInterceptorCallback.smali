.class public abstract Lcom/android/server/wm/ActivityInterceptorCallback;
.super Ljava/lang/Object;
.source "ActivityInterceptorCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;,
        Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;,
        Lcom/android/server/wm/ActivityInterceptorCallback$OrderedId;
    }
.end annotation


# static fields
.field public static final DREAM_MANAGER_ORDERED_ID:I = 0x4

.field static final FIRST_ORDERED_ID:I = 0x0

.field static final LAST_ORDERED_ID:I = 0x4

.field public static final PERMISSION_POLICY_ORDERED_ID:I = 0x1

.field public static final VIRTUAL_DEVICE_SERVICE_ORDERED_ID:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract intercept(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
.end method

.method public onActivityLaunched(Landroid/app/TaskInfo;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 4
    .param p1, "taskInfo"    # Landroid/app/TaskInfo;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "info"    # Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    .line 54
    return-void
.end method
