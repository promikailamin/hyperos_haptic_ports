.class public Landroid/app/PendingIntent$CanceledException;
.super Landroid/util/AndroidException;
.source "PendingIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanceledException"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Landroid/util/AndroidException;-><init>()V

    .line 315
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Exception;)V
    .registers 2

    .line 322
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    .line 323
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2

    .line 318
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 319
    return-void
.end method
