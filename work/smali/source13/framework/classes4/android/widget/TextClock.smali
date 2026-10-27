.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private greylist-max-o mDescFormat:Ljava/lang/CharSequence;

.field private greylist-max-o mDescFormat12:Ljava/lang/CharSequence;

.field private greylist-max-o mDescFormat24:Ljava/lang/CharSequence;

.field private greylist-max-o mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private greylist-max-o mFormat12:Ljava/lang/CharSequence;

.field private greylist-max-o mFormat24:Ljava/lang/CharSequence;

.field private greylist-max-o mFormatChangeObserver:Landroid/database/ContentObserver;

.field private greylist-max-o mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final greylist-max-o mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private greylist-max-o mRegistered:Z

.field private greylist-max-o mShouldRunTicker:Z

.field private greylist-max-o mShowCurrentUserTime:Z

.field private greylist-max-o mStopTicking:Z

.field private final greylist-max-o mTicker:Ljava/lang/Runnable;

.field private greylist-max-o mTime:Ljava/util/Calendar;

.field private greylist-max-o mTimeZone:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasSeconds(Landroid/widget/TextClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopTicking(Landroid/widget/TextClock;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTime(Landroid/widget/TextClock;)Ljava/util/Calendar;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeZone(Landroid/widget/TextClock;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mchooseFormat(Landroid/widget/TextClock;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateTime(Landroid/widget/TextClock;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeChanged(Landroid/widget/TextClock;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    const-string v0, "h:mm a"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    .line 127
    const-string v0, "H:mm"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 225
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 226
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 227
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 243
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 258
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 261
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 172
    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    .line 263
    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 265
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->TextClock:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextClock;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 268
    const/4 v1, 0x0

    :try_start_23
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 270
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_3f

    .line 272
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 273
    nop

    .line 275
    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    .line 276
    return-void

    .line 272
    :catchall_3f
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 273
    throw v1
.end method

.method private static greylist-max-o abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;
    .param p2, "c"    # Ljava/lang/CharSequence;

    .line 550
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    move-object v0, p2

    goto :goto_9

    :cond_6
    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method private greylist-max-o chooseFormat()V
    .registers 5

    .line 522
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    .line 524
    .local v0, "format24Requested":Z
    if-eqz v0, :cond_21

    .line 525
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    const-string v3, "Hm"

    invoke-direct {p0, v3}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 526
    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v1}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_3b

    .line 528
    :cond_21
    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    const-string v3, "hm"

    invoke-direct {p0, v3}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    .line 529
    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v1}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    .line 532
    :goto_3b
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 533
    .local v1, "hadSeconds":Z
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    .line 535
    iget-boolean v3, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v3, :cond_50

    if-eq v1, v2, :cond_50

    .line 536
    iget-object v2, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 538
    :cond_50
    return-void
.end method

.method private greylist-max-o createTime(Ljava/lang/String;)V
    .registers 3
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 291
    if-eqz p1, :cond_d

    .line 292
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    goto :goto_13

    .line 294
    :cond_d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    .line 296
    :goto_13
    return-void
.end method

.method private blacklist getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "skeleton"    # Ljava/lang/String;

    .line 541
    nop

    .line 542
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 541
    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 543
    .local v0, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o init()V
    .registers 2

    .line 279
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v0, :cond_c

    .line 280
    const-string v0, "hm"

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 282
    :cond_c
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_18

    .line 283
    const-string v0, "Hm"

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 286
    :cond_18
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 288
    return-void
.end method

.method private greylist onTimeChanged()V
    .registers 4

    .line 659
    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 660
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 662
    return-void
.end method

.method private greylist-max-o registerObserver()V
    .registers 6

    .line 619
    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_37

    .line 620
    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_13

    .line 621
    new-instance v0, Landroid/widget/TextClock$FormatChangeObserver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/TextClock$FormatChangeObserver;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 623
    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 624
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 625
    .local v1, "uri":Landroid/net/Uri;
    iget-boolean v2, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2e

    .line 626
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_37

    .line 637
    :cond_2e
    iget-object v2, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 638
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 637
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 641
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_37
    :goto_37
    return-void
.end method

.method private greylist-max-o registerReceiver()V
    .registers 8

    .line 602
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 604
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 615
    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 614
    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 616
    return-void
.end method

.method private greylist-max-o unregisterObserver()V
    .registers 3

    .line 648
    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_11

    .line 649
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 650
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 652
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_11
    return-void
.end method

.method private greylist-max-o unregisterReceiver()V
    .registers 3

    .line 644
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 645
    return-void
.end method


# virtual methods
.method public blacklist disableClockTick()V
    .registers 2

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    .line 599
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .line 667
    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 669
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 670
    .local v0, "s":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    move-object v2, v1

    goto :goto_10

    :cond_c
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_10
    const-string v3, "format12Hour"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    .line 673
    if-nez v0, :cond_1d

    move-object v2, v1

    goto :goto_21

    :cond_1d
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_21
    const-string v3, "format24Hour"

    invoke-virtual {p1, v3, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v2, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v2, :cond_2b

    goto :goto_2f

    :cond_2b
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2f
    const-string v2, "format"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    const-string v2, "hasSeconds"

    invoke-virtual {p1, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 676
    return-void
.end method

.method public greylist-max-r getFormat()Ljava/lang/CharSequence;
    .registers 2

    .line 514
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getFormat12Hour()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 311
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getFormat24Hour()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 371
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTimeZone()Ljava/lang/String;
    .registers 2

    .line 480
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist is24HourModeEnabled()Z
    .registers 3

    .line 461
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_11

    .line 462
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 464
    :cond_11
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 2

    .line 555
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 557
    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-nez v0, :cond_15

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    .line 560
    invoke-direct {p0}, Landroid/widget/TextClock;->registerReceiver()V

    .line 561
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 563
    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 565
    :cond_15
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 582
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 584
    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_10

    .line 585
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterReceiver()V

    .line 586
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    .line 590
    :cond_10
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .registers 3
    .param p1, "isVisible"    # Z

    .line 569
    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    .line 571
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-nez v0, :cond_12

    if-eqz p1, :cond_12

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    .line 573
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1e

    .line 574
    :cond_12
    if-eqz v0, :cond_1e

    if-nez p1, :cond_1e

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    .line 576
    iget-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 578
    :cond_1e
    :goto_1e
    return-void
.end method

.method public whitelist refreshTime()V
    .registers 1

    .line 437
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 438
    invoke-virtual {p0}, Landroid/widget/TextClock;->invalidate()V

    .line 439
    return-void
.end method

.method public greylist-max-o setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 352
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    .line 354
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 355
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 356
    return-void
.end method

.method public greylist-max-o setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;

    .line 411
    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    .line 413
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 414
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 415
    return-void
.end method

.method public whitelist setFormat12Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 341
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    .line 343
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 344
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 345
    return-void
.end method

.method public whitelist setFormat24Hour(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 400
    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    .line 402
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 403
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 404
    return-void
.end method

.method public greylist-max-o setShowCurrentUserTime(Z)V
    .registers 2
    .param p1, "showCurrentUserTime"    # Z

    .line 425
    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    .line 427
    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    .line 428
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 429
    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    .line 430
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    .line 431
    return-void
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)V
    .registers 2
    .param p1, "timeZone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 500
    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    .line 502
    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    .line 503
    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    .line 504
    return-void
.end method
