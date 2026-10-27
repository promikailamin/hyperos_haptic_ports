.class Landroid/app/ActivityInjector;
.super Ljava/lang/Object;
.source "ActivityInjector.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ActivityInjector"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkAccessControl(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 53
    return-void
.end method
