.class public Landroid/app/ExtraActivityManager$PriorityComponent;
.super Ljava/lang/Object;
.source "ExtraActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ExtraActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriorityComponent"
.end annotation


# instance fields
.field public final blacklist mComponent:Landroid/content/ComponentName;

.field public final blacklist mPriority:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/ComponentName;I)V
    .registers 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "p"    # I

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/app/ExtraActivityManager$PriorityComponent;->mComponent:Landroid/content/ComponentName;

    .line 137
    iput p2, p0, Landroid/app/ExtraActivityManager$PriorityComponent;->mPriority:I

    .line 138
    return-void
.end method
