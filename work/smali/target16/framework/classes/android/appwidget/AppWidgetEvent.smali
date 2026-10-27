.class public final Landroid/appwidget/AppWidgetEvent;
.super Ljava/lang/Object;
.source "AppWidgetEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/appwidget/AppWidgetEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_NUM_ITEMS:I = 0xa


# instance fields
.field private final blacklist mAppWidgetId:I

.field private final blacklist mClickedIds:[I

.field private final blacklist mEnd:Ljava/time/Instant;

.field private final blacklist mPosition:Landroid/graphics/Rect;

.field private final blacklist mScrolledIds:[I

.field private final blacklist mStart:Ljava/time/Instant;

.field private final blacklist mVisibleDuration:Ljava/time/Duration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 167
    new-instance v0, Landroid/appwidget/AppWidgetEvent$1;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetEvent$1;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJJJLandroid/graphics/Rect;[I[I)V
    .registers 11

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Landroid/appwidget/AppWidgetEvent;->mAppWidgetId:I

    .line 132
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Landroid/appwidget/AppWidgetEvent;->mVisibleDuration:Ljava/time/Duration;

    .line 133
    invoke-static {p4, p5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Landroid/appwidget/AppWidgetEvent;->mStart:Ljava/time/Instant;

    .line 134
    invoke-static {p6, p7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Landroid/appwidget/AppWidgetEvent;->mEnd:Ljava/time/Instant;

    .line 135
    iput-object p8, p0, Landroid/appwidget/AppWidgetEvent;->mPosition:Landroid/graphics/Rect;

    .line 136
    iput-object p9, p0, Landroid/appwidget/AppWidgetEvent;->mClickedIds:[I

    .line 137
    iput-object p10, p0, Landroid/appwidget/AppWidgetEvent;->mScrolledIds:[I

    .line 138
    return-void
.end method

.method synthetic constructor blacklist <init>(IJJJLandroid/graphics/Rect;[I[ILandroid/appwidget/AppWidgetEvent-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/appwidget/AppWidgetEvent;-><init>(IJJJLandroid/graphics/Rect;[I[I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetEvent;->mAppWidgetId:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mVisibleDuration:Ljava/time/Duration;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mStart:Ljava/time/Instant;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mEnd:Ljava/time/Instant;

    .line 148
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mPosition:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mClickedIds:[I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Landroid/appwidget/AppWidgetEvent;->mScrolledIds:[I

    .line 151
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/appwidget/AppWidgetEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist fromUsageEvent(Landroid/app/usage/UsageEvents$Event;)Landroid/appwidget/AppWidgetEvent;
    .registers 18

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/UsageEvents$Event;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 218
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 220
    const-string v1, "android.appwidget.extra.EVENT_DURATION_MS"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 221
    const-string v1, "android.appwidget.extra.EVENT_START"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 222
    const-string v1, "android.appwidget.extra.EVENT_END"

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 223
    nop

    .line 224
    nop

    .line 225
    nop

    .line 226
    const-string v1, "android.appwidget.extra.EVENT_POSITION_RECT"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_46

    .line 227
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 228
    if-eqz v1, :cond_46

    array-length v3, v1

    const/4 v12, 0x4

    if-ne v3, v12, :cond_46

    .line 229
    new-instance v3, Landroid/graphics/Rect;

    aget v2, v1, v2

    const/4 v12, 0x1

    aget v12, v1, v12

    const/4 v13, 0x2

    aget v13, v1, v13

    const/4 v14, 0x3

    aget v1, v1, v14

    invoke-direct {v3, v2, v12, v13, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_47

    .line 233
    :cond_46
    move-object v3, v11

    :goto_47
    const-string v1, "android.appwidget.extra.EVENT_CLICKED_VIEWS"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 234
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    move-object v12, v1

    goto :goto_56

    .line 233
    :cond_55
    move-object v12, v11

    .line 236
    :goto_56
    const-string v1, "android.appwidget.extra.EVENT_SCROLLED_VIEWS"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 237
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    move-object v13, v11

    goto :goto_65

    .line 236
    :cond_64
    move-object v13, v11

    .line 239
    :goto_65
    move-object v11, v3

    new-instance v3, Landroid/appwidget/AppWidgetEvent;

    move-wide v15, v9

    move-wide v9, v5

    move-wide v5, v7

    move-wide v7, v15

    invoke-direct/range {v3 .. v13}, Landroid/appwidget/AppWidgetEvent;-><init>(IJJJLandroid/graphics/Rect;[I[I)V

    return-object v3
.end method

.method public static blacklist isAppWidgetEvent(Landroid/app/usage/UsageEvents$Event;)Z
    .registers 3

    .line 256
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_28

    .line 257
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "android.app.usage.extra.EVENT_ACTION"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "widget_interaction"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 259
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "appWidgetId"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    .line 256
    :goto_29
    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppWidgetId()I
    .registers 2

    .line 69
    iget v0, p0, Landroid/appwidget/AppWidgetEvent;->mAppWidgetId:I

    return v0
.end method

.method public whitelist getClickedIds()[I
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mClickedIds:[I

    return-object v0
.end method

.method public whitelist getEnd()Ljava/time/Instant;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mEnd:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getPosition()Landroid/graphics/Rect;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getScrolledIds()[I
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mScrolledIds:[I

    return-object v0
.end method

.method public whitelist getStart()Ljava/time/Instant;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mStart:Ljava/time/Instant;

    return-object v0
.end method

.method public whitelist getVisibleDuration()Ljava/time/Duration;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mVisibleDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public blacklist toBundle()Landroid/os/PersistableBundle;
    .registers 6

    .line 189
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 190
    const-string v1, "android.app.usage.extra.EVENT_ACTION"

    const-string/jumbo v2, "widget_interaction"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "android.app.usage.extra.EVENT_CATEGORY"

    const-string v2, "android.appwidget"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "appWidgetId"

    iget v2, p0, Landroid/appwidget/AppWidgetEvent;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 195
    iget-object v1, p0, Landroid/appwidget/AppWidgetEvent;->mVisibleDuration:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    const-string v3, "android.appwidget.extra.EVENT_DURATION_MS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 196
    iget-object v1, p0, Landroid/appwidget/AppWidgetEvent;->mStart:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    const-string v3, "android.appwidget.extra.EVENT_START"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 197
    iget-object v1, p0, Landroid/appwidget/AppWidgetEvent;->mEnd:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    const-string v3, "android.appwidget.extra.EVENT_END"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 198
    iget-object v1, p0, Landroid/appwidget/AppWidgetEvent;->mPosition:Landroid/graphics/Rect;

    if-eqz v1, :cond_59

    .line 199
    iget-object v1, p0, Landroid/appwidget/AppWidgetEvent;->mPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/appwidget/AppWidgetEvent;->mPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetEvent;->mPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/appwidget/AppWidgetEvent;->mPosition:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const-string v2, "android.appwidget.extra.EVENT_POSITION_RECT"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 202
    :cond_59
    iget-object v1, p0, Landroid/appwidget/AppWidgetEvent;->mClickedIds:[I

    if-eqz v1, :cond_69

    iget-object v1, p0, Landroid/appwidget/AppWidgetEvent;->mClickedIds:[I

    array-length v1, v1

    if-lez v1, :cond_69

    .line 203
    const-string v1, "android.appwidget.extra.EVENT_CLICKED_VIEWS"

    iget-object v2, p0, Landroid/appwidget/AppWidgetEvent;->mClickedIds:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 205
    :cond_69
    iget-object v1, p0, Landroid/appwidget/AppWidgetEvent;->mScrolledIds:[I

    if-eqz v1, :cond_79

    iget-object v1, p0, Landroid/appwidget/AppWidgetEvent;->mScrolledIds:[I

    array-length v1, v1

    if-lez v1, :cond_79

    .line 206
    const-string v1, "android.appwidget.extra.EVENT_SCROLLED_VIEWS"

    iget-object v2, p0, Landroid/appwidget/AppWidgetEvent;->mScrolledIds:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 208
    :cond_79
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 245
    iget v0, p0, Landroid/appwidget/AppWidgetEvent;->mAppWidgetId:I

    .line 246
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/appwidget/AppWidgetEvent;->mVisibleDuration:Ljava/time/Duration;

    iget-object v3, p0, Landroid/appwidget/AppWidgetEvent;->mStart:Ljava/time/Instant;

    iget-object v4, p0, Landroid/appwidget/AppWidgetEvent;->mEnd:Ljava/time/Instant;

    iget-object v5, p0, Landroid/appwidget/AppWidgetEvent;->mPosition:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mClickedIds:[I

    .line 247
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mScrolledIds:[I

    .line 248
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 245
    const-string v1, "AppWidgetEvent(appWidgetId=%d, duration=%s, start=%s, end=%s position=%s, clickedIds=%s, scrolledIds=%s)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 155
    iget v0, p0, Landroid/appwidget/AppWidgetEvent;->mAppWidgetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mVisibleDuration:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mStart:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mEnd:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-object v0, p0, Landroid/appwidget/AppWidgetEvent;->mPosition:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 160
    iget-object p2, p0, Landroid/appwidget/AppWidgetEvent;->mClickedIds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 161
    iget-object p2, p0, Landroid/appwidget/AppWidgetEvent;->mScrolledIds:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 162
    return-void
.end method
