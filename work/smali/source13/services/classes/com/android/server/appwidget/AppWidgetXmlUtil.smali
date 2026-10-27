.class public Lcom/android/server/appwidget/AppWidgetXmlUtil;
.super Ljava/lang/Object;
.source "AppWidgetXmlUtil.java"


# static fields
.field private static final ATTR_AUTO_ADVANCED_VIEW_ID:Ljava/lang/String; = "auto_advance_view_id"

.field private static final ATTR_CONFIGURE:Ljava/lang/String; = "configure"

.field private static final ATTR_DESCRIPTION_RES:Ljava/lang/String; = "description_res"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_INITIAL_KEYGUARD_LAYOUT:Ljava/lang/String; = "initial_keyguard_layout"

.field private static final ATTR_INITIAL_LAYOUT:Ljava/lang/String; = "initial_layout"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final ATTR_MAX_RESIZE_HEIGHT:Ljava/lang/String; = "max_resize_height"

.field private static final ATTR_MAX_RESIZE_WIDTH:Ljava/lang/String; = "max_resize_width"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_RESIZE_HEIGHT:Ljava/lang/String; = "min_resize_height"

.field private static final ATTR_MIN_RESIZE_WIDTH:Ljava/lang/String; = "min_resize_width"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_OS_FINGERPRINT:Ljava/lang/String; = "os_fingerprint"

.field private static final ATTR_PREVIEW_IMAGE:Ljava/lang/String; = "preview_image"

.field private static final ATTR_PREVIEW_LAYOUT:Ljava/lang/String; = "preview_layout"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_TARGET_CELL_HEIGHT:Ljava/lang/String; = "target_cell_height"

.field private static final ATTR_TARGET_CELL_WIDTH:Ljava/lang/String; = "target_cell_width"

.field private static final ATTR_UPDATE_PERIOD_MILLIS:Ljava/lang/String; = "update_period_millis"

.field private static final ATTR_WIDGET_CATEGORY:Ljava/lang/String; = "widget_category"

.field private static final ATTR_WIDGET_FEATURES:Ljava/lang/String; = "widget_features"

.field private static final TAG:Ljava/lang/String; = "AppWidgetXmlUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAppWidgetProviderInfoLocked(Landroid/util/TypedXmlPullParser;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 7
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;

    .line 105
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v0, 0x0

    const-string/jumbo v1, "os_fingerprint"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "fingerprint":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 108
    return-object v0

    .line 110
    :cond_14
    new-instance v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 111
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const-string/jumbo v3, "min_width"

    const/4 v4, 0x0

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 112
    const-string/jumbo v3, "min_height"

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 113
    const-string/jumbo v3, "min_resize_width"

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 114
    const-string/jumbo v3, "min_resize_height"

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 115
    const-string/jumbo v3, "max_resize_width"

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    .line 116
    const-string/jumbo v3, "max_resize_height"

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    .line 117
    const-string/jumbo v3, "target_cell_width"

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    .line 118
    const-string/jumbo v3, "target_cell_height"

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    .line 119
    const-string/jumbo v3, "update_period_millis"

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 120
    const-string/jumbo v3, "initial_layout"

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 121
    const-string/jumbo v3, "initial_keyguard_layout"

    invoke-interface {p0, v0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 123
    const-string v3, "configure"

    invoke-interface {p0, v0, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "configure":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8f

    .line 125
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 127
    :cond_8f
    const-string/jumbo v5, "label"

    invoke-interface {p0, v0, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 128
    const-string/jumbo v5, "icon"

    invoke-interface {p0, v0, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 129
    const-string/jumbo v5, "preview_image"

    invoke-interface {p0, v0, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 130
    const-string/jumbo v5, "preview_layout"

    invoke-interface {p0, v0, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    .line 131
    const-string v5, "auto_advance_view_id"

    invoke-interface {p0, v0, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 132
    const-string/jumbo v5, "resize_mode"

    invoke-interface {p0, v0, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 133
    const-string/jumbo v5, "widget_category"

    invoke-interface {p0, v0, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 134
    const-string/jumbo v5, "widget_features"

    invoke-interface {p0, v0, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 135
    const-string v5, "description_res"

    invoke-interface {p0, v0, v5, v4}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    .line 136
    return-object v2
.end method

.method public static writeAppWidgetProviderInfoLocked(Landroid/util/TypedXmlSerializer;Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 5
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    const/4 v1, 0x0

    const-string/jumbo v2, "min_width"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    const-string/jumbo v2, "min_height"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    const-string/jumbo v2, "min_resize_width"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    const-string/jumbo v2, "min_resize_height"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    const-string/jumbo v2, "max_resize_width"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    const-string/jumbo v2, "max_resize_height"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    const-string/jumbo v2, "target_cell_width"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    const-string/jumbo v2, "target_cell_height"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    const-string/jumbo v2, "update_period_millis"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const-string/jumbo v2, "initial_layout"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    const-string/jumbo v2, "initial_keyguard_layout"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_6e

    .line 81
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "configure"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    :cond_6e
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v0, :cond_7b

    .line 84
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    const-string/jumbo v2, "label"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_95

    .line 86
    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Label is empty in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppWidgetXmlUtil"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_95
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const-string/jumbo v2, "icon"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const-string/jumbo v2, "preview_image"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    const-string/jumbo v2, "preview_layout"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const-string v2, "auto_advance_view_id"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const-string/jumbo v2, "resize_mode"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    const-string/jumbo v2, "widget_category"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    const-string/jumbo v2, "widget_features"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    const-string v2, "description_res"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v2, "os_fingerprint"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    return-void
.end method
