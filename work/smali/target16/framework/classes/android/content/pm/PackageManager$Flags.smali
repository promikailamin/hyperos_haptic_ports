.class public Landroid/content/pm/PackageManager$Flags;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flags"
.end annotation


# instance fields
.field final blacklist mValue:J


# direct methods
.method protected constructor blacklist <init>(J)V
    .registers 3

    .line 5787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5788
    iput-wide p1, p0, Landroid/content/pm/PackageManager$Flags;->mValue:J

    .line 5789
    return-void
.end method


# virtual methods
.method public whitelist getValue()J
    .registers 3

    .line 5791
    iget-wide v0, p0, Landroid/content/pm/PackageManager$Flags;->mValue:J

    return-wide v0
.end method
