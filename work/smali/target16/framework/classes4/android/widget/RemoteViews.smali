.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$SetRemoteInputsAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$SetIntTagAction;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$RemoteCollectionCache;,
        Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$ViewGroupActionAdd;,
        Landroid/widget/RemoteViews$RemoteCollectionItems;,
        Landroid/widget/RemoteViews$PendingResources;,
        Landroid/widget/RemoteViews$MethodKey;,
        Landroid/widget/RemoteViews$MethodArgs;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$ApplicationInfoCache;,
        Landroid/widget/RemoteViews$HierarchyRootData;,
        Landroid/widget/RemoteViews$SetDrawInstructionAction;,
        Landroid/widget/RemoteViews$DrawInstructions;,
        Landroid/widget/RemoteViews$SetOnClickResponse;,
        Landroid/widget/RemoteViews$SetDrawableTint;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$ViewGroupActionRemove;,
        Landroid/widget/RemoteViews$ViewContentNavigation;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$LayoutParamAction;,
        Landroid/widget/RemoteViews$SetRippleDrawableColor;,
        Landroid/widget/RemoteViews$RemoveFromParentAction;,
        Landroid/widget/RemoteViews$ResourceReflectionAction;,
        Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;,
        Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;,
        Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;,
        Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;,
        Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;,
        Landroid/widget/RemoteViews$NightModeReflectionAction;,
        Landroid/widget/RemoteViews$AttributeReflectionAction;,
        Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;,
        Landroid/widget/RemoteViews$RemoteResponse;,
        Landroid/widget/RemoteViews$BaseReflectionAction;,
        Landroid/widget/RemoteViews$InteractionHandler;,
        Landroid/widget/RemoteViews$ActionApplyParams;,
        Landroid/widget/RemoteViews$ColorResources;,
        Landroid/widget/RemoteViews$RemoteViewsContextWrapper;,
        Landroid/widget/RemoteViews$OnViewAppliedListener;,
        Landroid/widget/RemoteViews$AsyncApplyTask;,
        Landroid/widget/RemoteViews$RemoteView;,
        Landroid/widget/RemoteViews$InvalidProtoException;,
        Landroid/widget/RemoteViews$ViewTree;,
        Landroid/widget/RemoteViews$RemoteViewOutlineProvider;,
        Landroid/widget/RemoteViews$RunnableAction;,
        Landroid/widget/RemoteViews$RuntimeAction;,
        Landroid/widget/RemoteViews$ApplyFlags;,
        Landroid/widget/RemoteViews$ValueType;,
        Landroid/widget/RemoteViews$MarginType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_NOOP:Landroid/widget/RemoteViews$Action;

.field private static final blacklist ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

.field private static final blacklist ATTRIBUTE_REFLECTION_ACTION_TAG:I = 0x20

.field private static final greylist-max-o BITMAP_REFLECTION_ACTION_TAG:I = 0xc

.field private static final blacklist COMPLEX_UNIT_DIMENSION_REFLECTION_ACTION_TAG:I = 0x19

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

.field public static final whitelist EXTRA_CHECKED:Ljava/lang/String; = "android.widget.extra.CHECKED"

.field static final greylist-max-o EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field static final blacklist EXTRA_REMOTEADAPTER_ON_LIGHT_BACKGROUND:Ljava/lang/String; = "remoteAdapterOnLightBackground"

.field public static final whitelist EXTRA_SHARED_ELEMENT_BOUNDS:Ljava/lang/String; = "android.widget.extra.SHARED_ELEMENT_BOUNDS"

.field static final blacklist FLAG_MASK_TO_PROPAGATE:I = 0x6

.field public static final blacklist FLAG_REAPPLY_DISALLOWED:I = 0x1

.field public static final blacklist FLAG_USE_LIGHT_BACKGROUND_LAYOUT:I = 0x4

.field public static final blacklist FLAG_WIDGET_IS_COLLECTION_CHILD:I = 0x2

.field private static final blacklist INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

.field private static final greylist-max-o LAYOUT_PARAM_ACTION_TAG:I = 0x13

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field public static final whitelist MARGIN_BOTTOM:I = 0x3

.field public static final whitelist MARGIN_END:I = 0x5

.field public static final whitelist MARGIN_LEFT:I = 0x0

.field public static final whitelist MARGIN_RIGHT:I = 0x2

.field public static final whitelist MARGIN_START:I = 0x4

.field public static final whitelist MARGIN_TOP:I = 0x1

.field private static final blacklist MAX_INIT_VIEW_COUNT:I = 0x10

.field private static final greylist-max-o MAX_NESTED_VIEWS:I = 0xa

.field private static final blacklist MAX_SINGLE_PARCEL_SIZE:I = 0xc3500

.field private static final greylist-max-o MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final blacklist MODE_HAS_SIZED_REMOTEVIEWS:I = 0x2

.field private static final greylist-max-o MODE_NORMAL:I = 0x0

.field private static final blacklist NIGHT_MODE_REFLECTION_ACTION_TAG:I = 0x1e

.field private static final greylist-max-o REFLECTION_ACTION_TAG:I = 0x2

.field private static final blacklist REMOVE_FROM_PARENT_ACTION_TAG:I = 0x17

.field private static final blacklist RESOURCE_REFLECTION_ACTION_TAG:I = 0x18

.field private static final blacklist SET_COMPOUND_BUTTON_CHECKED_TAG:I = 0x1a

.field private static final greylist-max-o SET_DRAWABLE_TINT_TAG:I = 0x3

.field private static final blacklist SET_DRAW_INSTRUCTION_TAG:I = 0x23

.field private static final greylist-max-o SET_EMPTY_VIEW_ACTION_TAG:I = 0x6

.field private static final blacklist SET_INT_TAG_TAG:I = 0x16

.field private static final blacklist SET_ON_CHECKED_CHANGE_RESPONSE_TAG:I = 0x1d

.field private static final blacklist SET_ON_CLICK_RESPONSE_TAG:I = 0x1

.field private static final blacklist SET_ON_STYLUS_HANDWRITING_RESPONSE_TAG:I = 0x22

.field private static final greylist-max-o SET_PENDING_INTENT_TEMPLATE_TAG:I = 0x8

.field private static final blacklist SET_RADIO_GROUP_CHECKED:I = 0x1b

.field private static final blacklist SET_REMOTE_ADAPTER_TAG:I = 0x21

.field private static final blacklist SET_REMOTE_COLLECTION_ITEMS_ADAPTER_TAG:I = 0x1f

.field private static final greylist-max-o SET_REMOTE_INPUTS_ACTION_TAG:I = 0x12

.field private static final greylist-max-o SET_REMOTE_VIEW_ADAPTER_INTENT_TAG:I = 0xa

.field private static final blacklist SET_RIPPLE_DRAWABLE_COLOR_TAG:I = 0x15

.field private static final blacklist SET_VIEW_OUTLINE_RADIUS_TAG:I = 0x1c

.field private static final greylist-max-o TEXT_VIEW_DRAWABLE_ACTION_TAG:I = 0xb

.field private static final greylist-max-o TEXT_VIEW_SIZE_ACTION_TAG:I = 0xd

.field static final blacklist VALUE_TYPE_ATTRIBUTE:I = 0x4

.field static final blacklist VALUE_TYPE_COMPLEX_UNIT:I = 0x2

.field static final blacklist VALUE_TYPE_RAW:I = 0x1

.field static final blacklist VALUE_TYPE_RESOURCE:I = 0x3

.field private static final greylist-max-o VIEW_CONTENT_NAVIGATION_TAG:I = 0x5

.field private static final greylist-max-o VIEW_GROUP_ACTION_ADD_TAG:I = 0x4

.field private static final greylist-max-o VIEW_GROUP_ACTION_REMOVE_TAG:I = 0x7

.field private static final greylist-max-o VIEW_PADDING_ACTION_TAG:I = 0xe

.field private static final greylist-max-o sLookupKey:Landroid/widget/RemoteViews$MethodKey;

.field private static final greylist-max-o sMethods:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/widget/RemoteViews$MethodKey;",
            "Landroid/widget/RemoteViews$MethodArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field public greylist mApplication:Landroid/content/pm/ApplicationInfo;

.field private blacklist mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

.field private blacklist mApplyFlags:I

.field private greylist mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private greylist-max-o mClassCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

.field private blacklist mFillInIntent:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasDrawInstructions:Z

.field private blacklist mIdealSize:Landroid/util/SizeF;

.field private greylist-max-o mIsRoot:Z

.field private greylist-max-o mLandscape:Landroid/widget/RemoteViews;

.field private greylist mLayoutId:I

.field private blacklist mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

.field private blacklist mLightBackgroundLayoutId:I

.field private blacklist mPendingIntentTemplate:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-r mPortrait:Landroid/widget/RemoteViews;

.field private blacklist mProviderInstanceId:J

.field private blacklist mSizedRemoteViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$NRekdIqmiueP5fwUC0YmWtpR0E8(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->lambda$createViewGroupActionAddFromProto$5(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$hmpt_woduFOUM0BFkF0bVOM0dPI(Landroid/widget/RemoteViews;Ljava/util/List;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->lambda$createSetDrawInstructionActionFromProto$6(Ljava/util/List;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$mszp-LmKWdwRqMgeBaQNf3wjxew(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->lambda$createFromBitmapReflectionActionFromProto$4(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$mvda3OcrZ6Sjla5KHLRsNS-C8vg(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->lambda$createSetRemoteCollectionItemListAdapterActionFromProto$2(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApplicationInfoCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$ApplicationInfoCache;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmApplyFlags(Landroid/widget/RemoteViews;)I
    .registers 1

    iget p0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClassCookies(Landroid/widget/RemoteViews;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRoot(Landroid/widget/RemoteViews;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLandscape(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPortrait(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSizedRemoteViews(Landroid/widget/RemoteViews;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapply(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinalizeViewRecycling(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBitmapMemoryUsedByActions(Landroid/widget/RemoteViews;)I
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getBitmapMemoryUsedByActions()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInternalAsyncApplyTask(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViews;->getInternalAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRemoteViewsToApply(Landroid/widget/RemoteViews;Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasDrawInstructions(Landroid/widget/RemoteViews;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasLandscapeAndPortraitLayouts(Landroid/widget/RemoteViews;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasMultipleLayouts(Landroid/widget/RemoteViews;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasSizedRemoteViews(Landroid/widget/RemoteViews;)Z
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$minflateView(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreapplyNestedViews(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->reapplyNestedViews(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews;Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetALTERNATIVE_DEFAULT()Landroid/os/Parcel$ReadWriteHelper;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViews;->ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_INTERACTION_HANDLER()Landroid/widget/RemoteViews$InteractionHandler;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->checkContainsKeys(Landroid/util/LongSparseArray;[J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/lang/CharSequence;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->createColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateDurationFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/time/Duration;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->createDurationFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->createIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateInstantFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/time/Instant;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->createInstantFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->getAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->getAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetNextRecyclableChild(Landroid/view/ViewGroup;)I
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetParameterType(I)Ljava/lang/Class;
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getParameterType(I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetStableId(Landroid/view/View;)I
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->getStableId(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smhasStableId(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/widget/RemoteViews;->hasStableId(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->setNextRecyclableChild(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsetStableId(Landroid/view/View;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->setStableId(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvisitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RemoteViews;->visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->writeColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteDurationToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Duration;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->writeDurationToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Duration;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->writeIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smwriteInstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Instant;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->writeInstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Instant;J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 356
    new-instance v0, Landroid/os/Parcel$ReadWriteHelper;

    invoke-direct {v0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ALTERNATIVE_DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    .line 363
    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    .line 481
    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    .line 485
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    .line 490
    new-instance v0, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v0}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    .line 800
    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->ACTION_NOOP:Landroid/widget/RemoteViews$Action;

    .line 9247
    new-instance v0, Landroid/widget/RemoteViews$2;

    invoke-direct {v0}, Landroid/widget/RemoteViews$2;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 6334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 395
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 401
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 426
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 433
    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 441
    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 443
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 456
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6334
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/pm/ApplicationInfo;I)V
    .registers 5

    .line 6173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 395
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 401
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 426
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 433
    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 441
    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 443
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 456
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6174
    iput-object p1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6175
    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6176
    iget-object p2, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {p2, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->put(Landroid/content/pm/ApplicationInfo;)V

    .line 6177
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 6408
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    .line 6409
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V
    .registers 10

    .line 6426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 395
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 401
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 425
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 426
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 433
    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 441
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 443
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 451
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 456
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6427
    const/16 v3, 0xa

    if-le p4, v3, :cond_49

    .line 6428
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_41

    goto :goto_49

    .line 6429
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Too many nested views."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6431
    :cond_49
    :goto_49
    add-int/2addr p4, v1

    .line 6433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 6435
    if-nez p2, :cond_65

    .line 6437
    new-instance p2, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object p2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 6439
    invoke-virtual {p1}, Landroid/os/Parcel;->copyClassCookies()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6440
    new-instance p2, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {p2, p0, p1}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    iput-object p2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    goto :goto_68

    .line 6442
    :cond_65
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 6445
    :goto_68
    if-nez v1, :cond_9d

    .line 6446
    sget-object p2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-nez p2, :cond_7b

    goto :goto_84

    :cond_7b
    sget-object p2, Landroid/util/SizeF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/util/SizeF;

    :goto_84
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 6448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6452
    invoke-direct {p0, p1, p4}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_117

    .line 6453
    :cond_9d
    const/4 p2, 0x2

    if-ne v1, p2, :cond_e5

    .line 6454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 6455
    const/16 v1, 0x10

    if-gt p2, v1, :cond_dd

    .line 6459
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6460
    nop

    :goto_ae
    if-ge v0, p2, :cond_c1

    .line 6461
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v3

    invoke-direct {v2, p1, v3, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    .line 6462
    iget-object p3, v2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6463
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6460
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    .line 6465
    :cond_c1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    .line 6466
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 6467
    iget-object p3, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6468
    iget p3, p2, Landroid/widget/RemoteViews;->mLayoutId:I

    iput p3, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6469
    iget p3, p2, Landroid/widget/RemoteViews;->mViewId:I

    iput p3, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6470
    iget p2, p2, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput p2, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6471
    goto :goto_117

    .line 6456
    :cond_dd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Too many views in mapping from size to RemoteViews."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6473
    :cond_e5
    new-instance p2, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v0

    invoke-direct {p2, p1, v0, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iput-object p2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 6474
    new-instance p2, Landroid/widget/RemoteViews;

    .line 6475
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p3

    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iget-object v0, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p2, p1, p3, v0, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 6476
    iget-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object p2, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6477
    iget-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget p2, p2, Landroid/widget/RemoteViews;->mLayoutId:I

    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6478
    iget-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget p2, p2, Landroid/widget/RemoteViews;->mViewId:I

    iput p2, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6479
    iget-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget p2, p2, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput p2, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6481
    :goto_117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 6482
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    iput-wide p2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6483
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    .line 6486
    iget-boolean p1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz p1, :cond_130

    .line 6487
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6489
    :cond_130
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews$DrawInstructions;)V
    .registers 6

    .line 6419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 395
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 401
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 425
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 426
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 433
    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 441
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 443
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 456
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6420
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6421
    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    .line 6422
    new-instance v0, Landroid/widget/RemoteViews$SetDrawInstructionAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews$SetDrawInstructionAction;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$DrawInstructions;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6423
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RemoteViews-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/RemoteViews;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;)V
    .registers 6

    .line 6325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 395
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 401
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 426
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 433
    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 441
    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 443
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 456
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6326
    invoke-direct {p0, p1, v1}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 6327
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5

    .line 6217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 395
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 401
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 426
    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 433
    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 441
    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 443
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 456
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6218
    if-eqz p1, :cond_67

    if-eqz p2, :cond_67

    .line 6221
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 6225
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6226
    iget v0, p2, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6227
    iget v0, p2, Landroid/widget/RemoteViews;->mViewId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6228
    iget v0, p2, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6230
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 6231
    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 6233
    iget-object v0, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    if-eqz v0, :cond_57

    .line 6234
    iget-object p1, p2, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    goto :goto_59

    :cond_57
    iget-object p1, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    :goto_59
    iput-object p1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6236
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6237
    return-void

    .line 6222
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both RemoteViews must share the same package and user"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6219
    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both RemoteViews must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4

    .line 6149
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/widget/RemoteViews;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 6150
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 4

    .line 6160
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 6161
    iput p3, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6162
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/SizeF;",
            "Landroid/widget/RemoteViews;",
            ">;)V"
        }
    .end annotation

    .line 6254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 395
    new-instance v1, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 401
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 404
    new-instance v1, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 410
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 425
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 426
    iput-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 433
    iput-object v2, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 441
    iput-object v2, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 443
    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 451
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 456
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6255
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 6258
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_8a

    .line 6261
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_56

    .line 6264
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    .line 6265
    invoke-direct {p0, p1, p1}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 6266
    return-void

    .line 6268
    :cond_56
    nop

    .line 6269
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 6274
    invoke-interface {p1}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6268
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6277
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object p1

    .line 6278
    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6279
    iget v0, p1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6280
    iget v0, p1, Landroid/widget/RemoteViews;->mViewId:I

    iput v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    .line 6281
    iget p1, p1, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput p1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6283
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6284
    return-void

    .line 6259
    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Too many RemoteViews in constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6256
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The set of RemoteViews cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o addAction(Landroid/widget/RemoteViews$Action;)V
    .registers 3

    .line 6694
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v0

    if-nez v0, :cond_17

    .line 6699
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 6700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 6702
    :cond_11
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6703
    return-void

    .line 6695
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "RemoteViews specifying separate layouts for orientation or size cannot be modified. Instead, fully configure each layouts individually before constructing the combined layout."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;
    .registers 12

    .line 8364
    invoke-virtual {p0, p1, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 8365
    iget v4, p5, Landroid/widget/RemoteViews$ActionApplyParams;->applyThemeResId:I

    iget-object v5, p5, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object p1

    .line 8367
    invoke-direct {v2, p1, p3, p5}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8368
    return-object p1
.end method

.method private static blacklist checkContainsKeys(Landroid/util/LongSparseArray;[J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "*>;[J)V"
        }
    .end annotation

    .line 10762
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2c

    aget-wide v2, p1, v1

    .line 10763
    invoke-virtual {p0, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_f

    .line 10762
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10764
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteViews proto missing field: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 10765
    invoke-static {v2, v3}, Landroid/util/proto/ProtoStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10769
    :cond_2c
    return-void
.end method

.method private static blacklist checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$InvalidProtoException;
        }
    .end annotation

    .line 10756
    if-eqz p0, :cond_3

    .line 10759
    return-void

    .line 10757
    :cond_3
    new-instance p0, Landroid/widget/RemoteViews$InvalidProtoException;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$InvalidProtoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist checkValidResource(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10751
    if-eqz p0, :cond_3

    .line 10752
    return-void

    .line 10751
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 3

    .line 6605
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 6606
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 6607
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 6608
    iget-object v0, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 6609
    iget-object p1, p1, Landroid/widget/RemoteViews$HierarchyRootData;->mClassCookies:Ljava/util/Map;

    iput-object p1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6610
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6611
    return-void
.end method

.method private blacklist configureDescendantsAsChildren()V
    .registers 4

    .line 6620
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->getOrPut(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6622
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v0

    .line 6623
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 6624
    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 6625
    invoke-direct {v2, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 6626
    goto :goto_1a

    :cond_2a
    goto :goto_56

    .line 6627
    :cond_2b
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 6628
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 6629
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    goto :goto_56

    .line 6631
    :cond_3c
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_56

    .line 6632
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    .line 6633
    invoke-virtual {v2, v0}, Landroid/widget/RemoteViews$Action;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 6634
    goto :goto_46

    .line 6637
    :cond_56
    :goto_56
    return-void
.end method

.method private static blacklist createActionFromProto(Landroid/widget/RemoteViews;Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10690
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    .line 10691
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 10693
    return-object v2

    .line 10695
    :cond_9
    packed-switch v0, :pswitch_data_9e

    .line 10744
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled field while reading Action proto!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10745
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10739
    :pswitch_29
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-nez v0, :cond_30

    .line 10740
    return-object v2

    .line 10742
    :cond_30
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->createSetDrawInstructionActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10737
    :pswitch_35
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewPaddingAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10735
    :pswitch_3a
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10733
    :pswitch_3f
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->createViewGroupActionAddFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10731
    :pswitch_44
    invoke-static {p1}, Landroid/widget/RemoteViews$TextViewSizeAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10729
    :pswitch_49
    invoke-static {p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10727
    :pswitch_4e
    invoke-static {p1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10725
    :pswitch_53
    invoke-static {p1}, Landroid/widget/RemoteViews$SetRippleDrawableColor;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10723
    :pswitch_58
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->createSetRemoteCollectionItemListAdapterActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10721
    :pswitch_5d
    invoke-static {p1}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10719
    :pswitch_62
    invoke-static {p1}, Landroid/widget/RemoteViews$SetIntTagAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10717
    :pswitch_67
    invoke-static {p1}, Landroid/widget/RemoteViews$SetEmptyView;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10715
    :pswitch_6c
    invoke-static {p1}, Landroid/widget/RemoteViews$SetDrawableTint;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10713
    :pswitch_71
    invoke-static {p1}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10711
    :pswitch_76
    invoke-static {p1}, Landroid/widget/RemoteViews$ResourceReflectionAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10709
    :pswitch_7b
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10707
    :pswitch_80
    invoke-static {p1}, Landroid/widget/RemoteViews$ReflectionAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10705
    :pswitch_85
    invoke-static {p1}, Landroid/widget/RemoteViews$NightModeReflectionAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10703
    :pswitch_8a
    invoke-static {p1}, Landroid/widget/RemoteViews$LayoutParamAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10701
    :pswitch_8f
    invoke-static {p1}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10699
    :pswitch_94
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->createFromBitmapReflectionActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    .line 10697
    :pswitch_99
    invoke-static {p1}, Landroid/widget/RemoteViews$AttributeReflectionAction;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p0

    return-object p0

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_99
        :pswitch_94
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_7b
        :pswitch_76
        :pswitch_71
        :pswitch_6c
        :pswitch_67
        :pswitch_62
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_29
    .end packed-switch
.end method

.method private static blacklist createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/lang/CharSequence;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10839
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 10840
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createCharSequenceFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 10841
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10842
    return-object v0
.end method

.method private static blacklist createColorStateListFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/content/res/ColorStateList;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10831
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 10832
    invoke-static {p0}, Landroid/content/res/ColorStateList;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 10833
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10834
    return-object v0
.end method

.method private static blacklist createDurationFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/time/Duration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10868
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 10869
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createDurationFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/time/Duration;

    move-result-object v0

    .line 10870
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10871
    return-object v0
.end method

.method private blacklist createFromBitmapReflectionActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2682
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 2684
    const-wide v1, 0x10b00000002L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 2685
    :goto_e
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_67

    .line 2686
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_7a

    .line 2700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2701
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2700
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 2696
    :pswitch_39
    nop

    .line 2697
    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2696
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2698
    goto :goto_e

    .line 2692
    :pswitch_4b
    nop

    .line 2693
    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 2692
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2694
    goto :goto_e

    .line 2688
    :pswitch_59
    nop

    .line 2689
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 2688
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2690
    goto :goto_e

    .line 2704
    :cond_67
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2706
    const/4 p1, 0x2

    new-array p1, p1, [J

    fill-array-data p1, :array_84

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->checkContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 2709
    new-instance p1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda2;-><init>(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;)V

    return-object p1

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_59
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_84
    .array-data 8
        0x10900000001L
        0x10900000002L
    .end array-data
.end method

.method private static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10469
    new-instance v0, Landroid/widget/RemoteViews$3;

    invoke-direct {v0}, Landroid/widget/RemoteViews$3;-><init>()V

    .line 10490
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_150

    .line 10491
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    packed-switch v1, :pswitch_data_15e

    .line 10566
    const-string v1, "RemoteViews"

    goto/16 :goto_134

    .line 10499
    :pswitch_17
    const-wide v1, 0x10500000011L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$3;->mUid:Ljava/lang/Integer;

    .line 10500
    goto :goto_5

    .line 10523
    :pswitch_27
    const-wide v1, 0x20b00000010L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10524
    iget-object v3, v0, Landroid/widget/RemoteViews$3;->mRv:Landroid/widget/RemoteViews;

    invoke-static {v3, p0}, Landroid/widget/RemoteViews;->createActionFromProto(Landroid/widget/RemoteViews;Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v3

    .line 10525
    if-eqz v3, :cond_3d

    .line 10526
    iget-object v4, v0, Landroid/widget/RemoteViews$3;->mActions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10528
    :cond_3d
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10529
    goto :goto_5

    .line 10552
    :pswitch_41
    const-wide v1, 0x10b0000000fL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10554
    iget-object v3, v0, Landroid/widget/RemoteViews$3;->mRv:Landroid/widget/RemoteViews;

    .line 10555
    invoke-direct {v3, p0}, Landroid/widget/RemoteViews;->populateRemoteCollectionCacheFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/RemoteViews$3;->mPopulateRemoteCollectionCache:Landroid/widget/RemoteViews$PendingResources;

    .line 10556
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10557
    goto :goto_5

    .line 10547
    :pswitch_56
    const-wide v1, 0x20c0000000eL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v1

    .line 10548
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 10549
    iget-object v2, v0, Landroid/widget/RemoteViews$3;->mRv:Landroid/widget/RemoteViews;

    iget-object v2, v2, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v2, v1}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapId(Landroid/graphics/Bitmap;)I

    .line 10550
    goto :goto_5

    .line 10562
    :pswitch_6d
    const-wide v1, 0x1080000000dL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/RemoteViews$3;->mHasDrawInstructions:Z

    .line 10564
    goto :goto_5

    .line 10559
    :pswitch_79
    const-wide v1, 0x1080000000cL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/RemoteViews$3;->mIsRoot:Z

    .line 10560
    goto :goto_5

    .line 10536
    :pswitch_85
    const-wide v1, 0x10b0000000bL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10538
    invoke-static {p0}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/RemoteViews$3;->mLandscapeViews:Landroid/widget/RemoteViews$PendingResources;

    .line 10539
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10540
    goto/16 :goto_5

    .line 10542
    :pswitch_99
    const-wide v1, 0x10b0000000aL

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10543
    invoke-static {p0}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/RemoteViews$3;->mPortraitViews:Landroid/widget/RemoteViews$PendingResources;

    .line 10544
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10545
    goto/16 :goto_5

    .line 10531
    :pswitch_ad
    const-wide v1, 0x20b00000009L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10532
    iget-object v3, v0, Landroid/widget/RemoteViews$3;->mSizedRemoteViews:Ljava/util/List;

    invoke-static {p0}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10533
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10534
    goto/16 :goto_5

    .line 10520
    :pswitch_c4
    const-wide v1, 0x10300000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Landroid/widget/RemoteViews$3;->mProviderInstanceId:J

    .line 10521
    goto/16 :goto_5

    .line 10517
    :pswitch_d2
    const-wide v1, 0x10500000007L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/widget/RemoteViews$3;->mApplyFlags:I

    .line 10518
    goto/16 :goto_5

    .line 10502
    :pswitch_df
    const-wide v1, 0x10b00000006L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 10503
    invoke-static {p0}, Landroid/widget/RemoteViews;->createSizeFFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/util/SizeF;

    move-result-object v3

    iput-object v3, v0, Landroid/widget/RemoteViews$3;->mIdealSize:Landroid/util/SizeF;

    .line 10504
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10505
    goto/16 :goto_5

    .line 10514
    :pswitch_f3
    const-wide v1, 0x10900000005L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$3;->mViewResName:Ljava/lang/String;

    .line 10515
    goto/16 :goto_5

    .line 10510
    :pswitch_100
    const-wide v1, 0x10900000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$3;->mLightBackgroundResName:Ljava/lang/String;

    .line 10512
    goto/16 :goto_5

    .line 10507
    :pswitch_10d
    const-wide v1, 0x10900000003L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$3;->mLayoutResName:Ljava/lang/String;

    .line 10508
    goto/16 :goto_5

    .line 10496
    :pswitch_11a
    const-wide v1, 0x10900000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$3;->mPackageName:Ljava/lang/String;

    .line 10497
    goto/16 :goto_5

    .line 10493
    :pswitch_127
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/widget/RemoteViews$3;->mMode:I

    .line 10494
    goto/16 :goto_5

    .line 10566
    :goto_134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10567
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10566
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14e} :catch_157

    goto/16 :goto_5

    .line 10572
    :cond_150
    nop

    .line 10574
    new-instance p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda9;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda9;-><init>(Landroid/widget/RemoteViews$3;)V

    return-object p0

    .line 10570
    :catch_157
    move-exception p0

    .line 10571
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_15e
    .packed-switch 0x1
        :pswitch_127
        :pswitch_11a
        :pswitch_10d
        :pswitch_100
        :pswitch_f3
        :pswitch_df
        :pswitch_d2
        :pswitch_c4
        :pswitch_ad
        :pswitch_99
        :pswitch_85
        :pswitch_79
        :pswitch_6d
        :pswitch_56
        :pswitch_41
        :pswitch_27
        :pswitch_17
    .end packed-switch
.end method

.method private static blacklist createIconFromProto(Landroid/util/proto/ProtoInputStream;J)Landroid/widget/RemoteViews$PendingResources;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "J)",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/graphics/drawable/Icon;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10816
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 10817
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createIconFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/util/function/Function;

    move-result-object v0

    .line 10818
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10819
    new-instance p0, Landroid/widget/RemoteViews$$ExternalSyntheticLambda10;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda10;-><init>(Ljava/util/function/Function;)V

    return-object p0
.end method

.method private static blacklist createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 3

    .line 6338
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0}, Landroid/widget/RemoteViews;-><init>()V

    .line 6339
    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 6340
    return-object v0
.end method

.method private static blacklist createInstantFromProto(Landroid/util/proto/ProtoInputStream;J)Ljava/time/Instant;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10853
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p1

    .line 10854
    invoke-static {p0}, Landroid/widget/RemoteViewsSerializers;->createInstantFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/time/Instant;

    move-result-object v0

    .line 10855
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 10856
    return-object v0
.end method

.method public static blacklist createPreviewFromProto(Landroid/content/Context;Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10461
    invoke-static {p1}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;

    return-object p0
.end method

.method private blacklist createSetDrawInstructionActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6123
    const-wide v1, 0x10b00000016L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 6124
    :goto_e
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_47

    .line 6125
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_50

    .line 6131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6132
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6131
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 6127
    :pswitch_39
    nop

    .line 6128
    const-wide v3, 0x20c00000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v3

    .line 6127
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6129
    goto :goto_e

    .line 6135
    :cond_47
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 6137
    new-instance p1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda5;-><init>(Landroid/widget/RemoteViews;Ljava/util/List;)V

    return-object p1

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_39
    .end packed-switch
.end method

.method private blacklist createSetRemoteCollectionItemListAdapterActionFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1468
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 1470
    const-wide v1, 0x10b0000000eL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 1472
    :goto_e
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5c

    .line 1473
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_6e

    .line 1488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1489
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1488
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1481
    :pswitch_39
    const-wide v3, 0x10b00000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 1483
    nop

    .line 1484
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v7

    .line 1483
    invoke-virtual {v0, v3, v4, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1485
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1486
    goto :goto_e

    .line 1475
    :pswitch_4e
    nop

    .line 1476
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 1475
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1479
    goto :goto_e

    .line 1492
    :cond_5c
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1494
    const/4 p1, 0x2

    new-array p1, p1, [J

    fill-array-data p1, :array_76

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->checkContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 1498
    new-instance p1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda6;-><init>(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;)V

    return-object p1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_39
    .end packed-switch

    :array_76
    .array-data 8
        0x10900000001L
        0x10b00000002L
    .end array-data
.end method

.method private static blacklist createSizeFFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/util/SizeF;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10788
    nop

    .line 10789
    const/4 v0, 0x0

    move v1, v0

    .line 10790
    :goto_3
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    .line 10791
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    .line 10799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field while reading SizeF proto!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10800
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10799
    const-string v3, "RemoteViews"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 10796
    :pswitch_2e
    const-wide v1, 0x10200000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v1

    .line 10797
    goto :goto_3

    .line 10793
    :pswitch_38
    const-wide v2, 0x10200000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readFloat(J)F

    move-result v0

    .line 10794
    goto :goto_3

    .line 10804
    :cond_42
    new-instance p0, Landroid/util/SizeF;

    invoke-direct {p0, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object p0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_38
        :pswitch_2e
    .end packed-switch
.end method

.method private blacklist createViewGroupActionAddFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4389
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 4391
    const-wide v1, 0x10b00000013L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 4392
    :goto_e
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_80

    .line 4393
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_92

    .line 4413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4414
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4413
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 4409
    :pswitch_39
    nop

    .line 4410
    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4409
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4411
    goto :goto_e

    .line 4405
    :pswitch_4b
    nop

    .line 4406
    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4405
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4407
    goto :goto_e

    .line 4399
    :pswitch_5d
    const-wide v3, 0x10b00000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v5

    .line 4400
    nop

    .line 4401
    invoke-static {p1}, Landroid/widget/RemoteViews;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v7

    .line 4400
    invoke-virtual {v0, v3, v4, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4402
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4403
    goto :goto_e

    .line 4395
    :pswitch_72
    nop

    .line 4396
    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 4395
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4397
    goto :goto_e

    .line 4417
    :cond_80
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 4419
    const/4 p1, 0x2

    new-array p1, p1, [J

    fill-array-data p1, :array_9e

    invoke-static {v0, p1}, Landroid/widget/RemoteViews;->checkContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 4422
    new-instance p1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda4;-><init>(Landroid/widget/RemoteViews;Landroid/util/LongSparseArray;)V

    return-object p1

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_72
        :pswitch_5d
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_9e
    .array-data 8
        0x10900000001L
        0x10b00000002L
    .end array-data
.end method

.method private blacklist finalizeViewRecycling(Landroid/view/ViewGroup;)V
    .registers 5

    .line 4112
    invoke-static {p1}, Landroid/widget/RemoteViews;->getNextRecyclableChild(Landroid/view/ViewGroup;)I

    move-result v0

    .line 4113
    if-ltz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 4114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 4117
    :cond_14
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/RemoteViews;->setNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 4119
    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_36

    .line 4120
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4121
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_33

    invoke-virtual {v0}, Landroid/view/View;->isRootNamespace()Z

    move-result v2

    if-nez v2, :cond_33

    .line 4122
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    .line 4119
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 4125
    :cond_36
    return-void
.end method

.method private blacklist findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 8

    .line 8244
    nop

    .line 8245
    nop

    .line 8246
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 8247
    invoke-direct {v3}, Landroid/widget/RemoteViews;->getIdealSize()Landroid/util/SizeF;

    move-result-object v4

    .line 8248
    if-eqz v4, :cond_3a

    .line 8252
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->fitsIn(Landroid/util/SizeF;Landroid/util/SizeF;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 8253
    if-nez v1, :cond_2e

    .line 8254
    nop

    .line 8255
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v1

    move v2, v1

    move-object v1, v3

    goto :goto_39

    .line 8257
    :cond_2e
    invoke-static {v4, p1}, Landroid/widget/RemoteViews;->squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F

    move-result v4

    .line 8258
    cmpg-float v5, v4, v2

    if-gez v5, :cond_39

    .line 8259
    nop

    .line 8260
    move-object v1, v3

    move v2, v4

    .line 8264
    :cond_39
    :goto_39
    goto :goto_c

    .line 8249
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected RemoteViews to have ideal size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8265
    :cond_42
    if-nez v1, :cond_61

    .line 8266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find a RemoteViews fitting the current size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteViews"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8267
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    .line 8269
    :cond_61
    return-object v1
.end method

.method private blacklist findSmallestRemoteView()Landroid/widget/RemoteViews;
    .registers 3

    .line 6205
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private static blacklist fitsIn(Landroid/util/SizeF;Landroid/util/SizeF;)Z
    .registers 8

    .line 8238
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    float-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2c

    .line 8239
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    float-to-double p0, p0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    .line 8238
    :goto_2d
    return p0
.end method

.method private greylist-max-o getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;
    .registers 5

    .line 6502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6503
    packed-switch v0, :pswitch_data_d6

    .line 6563
    :pswitch_7
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " not found"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6561
    :pswitch_26
    new-instance p2, Landroid/widget/RemoteViews$SetDrawInstructionAction;

    invoke-direct {p2, p0, p1}, Landroid/widget/RemoteViews$SetDrawInstructionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object p2

    .line 6559
    :pswitch_2c
    new-instance p2, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;

    invoke-direct {p2, p0, p1}, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object p2

    .line 6557
    :pswitch_32
    new-instance p2, Landroid/widget/RemoteViews$AttributeReflectionAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6555
    :pswitch_38
    new-instance p2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {p2, p0, p1}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object p2

    .line 6553
    :pswitch_3e
    new-instance p2, Landroid/widget/RemoteViews$NightModeReflectionAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6551
    :pswitch_44
    new-instance p2, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    invoke-direct {p2, p0, p1}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object p2

    .line 6549
    :pswitch_4a
    new-instance p2, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6547
    :pswitch_50
    new-instance p2, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6545
    :pswitch_56
    new-instance p2, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6543
    :pswitch_5c
    new-instance p2, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6541
    :pswitch_62
    new-instance p2, Landroid/widget/RemoteViews$ResourceReflectionAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6539
    :pswitch_68
    new-instance p2, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6537
    :pswitch_6e
    new-instance p2, Landroid/widget/RemoteViews$SetIntTagAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6535
    :pswitch_74
    new-instance p2, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6533
    :pswitch_7a
    new-instance p2, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6531
    :pswitch_80
    new-instance p2, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6527
    :pswitch_86
    new-instance p2, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6525
    :pswitch_8c
    new-instance p2, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6529
    :pswitch_92
    new-instance p2, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {p2, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object p2

    .line 6523
    :pswitch_98
    new-instance p2, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6521
    :pswitch_9e
    new-instance p2, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {p2, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object p2

    .line 6519
    :pswitch_a4
    new-instance p2, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6513
    :pswitch_aa
    new-instance p2, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6517
    :pswitch_b0
    new-instance p2, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6515
    :pswitch_b6
    new-instance p2, Landroid/widget/RemoteViews$ViewContentNavigation;

    invoke-direct {p2, p0, p1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object p2

    .line 6511
    :pswitch_bc
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/content/pm/ApplicationInfo;I)V

    return-object v0

    .line 6507
    :pswitch_c4
    new-instance p2, Landroid/widget/RemoteViews$SetDrawableTint;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6509
    :pswitch_ca
    new-instance p2, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/os/Parcel;)V

    return-object p2

    .line 6505
    :pswitch_d0
    new-instance p2, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-direct {p2, p0, p1}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    return-object p2

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_d0
        :pswitch_ca
        :pswitch_c4
        :pswitch_bc
        :pswitch_b6
        :pswitch_b0
        :pswitch_aa
        :pswitch_a4
        :pswitch_7
        :pswitch_9e
        :pswitch_98
        :pswitch_92
        :pswitch_8c
        :pswitch_86
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_80
        :pswitch_7a
        :pswitch_7
        :pswitch_74
        :pswitch_6e
        :pswitch_68
        :pswitch_62
        :pswitch_5c
        :pswitch_56
        :pswitch_50
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_7
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method private static greylist-max-o getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 9208
    if-nez p0, :cond_4

    .line 9209
    const/4 p0, 0x0

    return-object p0

    .line 9213
    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 9214
    if-eqz v0, :cond_4c

    .line 9218
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 9219
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_1e

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 9220
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 9222
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    .line 9224
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_30} :catch_32

    .line 9227
    nop

    .line 9230
    :cond_31
    return-object v1

    .line 9225
    :catch_32
    move-exception p1

    .line 9226
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9215
    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create remote views out of an aplication."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/LongSparseArray<",
            "*>;J)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10773
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 10774
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 10775
    const-string p2, "Invalid id"

    invoke-static {p0, p2, p1}, Landroid/widget/RemoteViews;->checkValidResource(ILjava/lang/String;Ljava/lang/String;)V

    .line 10776
    return p0
.end method

.method private static blacklist getAsIdentifier(Landroid/content/res/Resources;Landroid/util/SparseArray;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/util/SparseArray<",
            "*>;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10781
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 10782
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 10783
    const-string p2, "Invalid id"

    invoke-static {p0, p2, p1}, Landroid/widget/RemoteViews;->checkValidResource(ILjava/lang/String;Ljava/lang/String;)V

    .line 10784
    return p0
.end method

.method private blacklist getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9717
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 9718
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 9719
    invoke-direct {v1, p1}, Landroid/widget/RemoteViews;->getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;

    .line 9720
    goto :goto_c

    :cond_1c
    goto :goto_69

    .line 9721
    :cond_1d
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 9722
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;

    .line 9723
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;

    goto :goto_69

    .line 9724
    :cond_2e
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_69

    .line 9725
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    .line 9726
    instance-of v2, v1, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v2, :cond_59

    move-object v2, v1

    check-cast v2, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-static {v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 9728
    invoke-static {v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-direct {v1, p1}, Landroid/widget/RemoteViews;->getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;

    goto :goto_68

    .line 9729
    :cond_59
    instance-of v2, v1, Landroid/widget/RemoteViews$BitmapReflectionAction;

    if-eqz v2, :cond_68

    check-cast v1, Landroid/widget/RemoteViews$BitmapReflectionAction;

    .line 9730
    iget v1, v1, Landroid/widget/RemoteViews$BitmapReflectionAction;->mBitmapId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9732
    :cond_68
    :goto_68
    goto :goto_38

    .line 9735
    :cond_69
    :goto_69
    return-object p1
.end method

.method private blacklist getBitmapMemoryUsedByActions()I
    .registers 5

    .line 9703
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->getBitmapIdsUsedByActions(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 9704
    nop

    .line 9705
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 9706
    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, v2}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 9707
    if-nez v2, :cond_28

    .line 9708
    goto :goto_f

    .line 9710
    :cond_28
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 9711
    goto :goto_f

    .line 9713
    :cond_2e
    return v1
.end method

.method private blacklist getChildId(Landroid/widget/RemoteViews;)I
    .registers 6

    .line 10302
    const/4 v0, 0x0

    if-ne p1, p0, :cond_4

    .line 10303
    return v0

    .line 10305
    :cond_4
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    .line 10306
    move v1, v0

    :goto_c
    iget-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_21

    .line 10307
    iget-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1e

    .line 10308
    add-int/2addr v1, v2

    return v1

    .line 10306
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 10312
    :cond_21
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 10313
    iget-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-ne v1, p1, :cond_2c

    .line 10314
    return v2

    .line 10315
    :cond_2c
    iget-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-ne v1, p1, :cond_32

    .line 10316
    const/4 p1, 0x2

    return p1

    .line 10320
    :cond_32
    return v0
.end method

.method private blacklist getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;
    .registers 8

    .line 8830
    const-string v0, "RemoteViews"

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_8a

    .line 8831
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v1, v2, :cond_23

    .line 8832
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 8833
    return-object p1

    .line 8836
    :cond_23
    :try_start_23
    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_25} :catch_69

    .line 8840
    :try_start_25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8841
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 8840
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_3a} :catch_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_3a} :catch_69

    .line 8844
    goto :goto_56

    .line 8842
    :catch_3b
    move-exception v2

    .line 8843
    :try_start_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch appInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8846
    :goto_56
    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1

    .line 8850
    nop

    .line 8851
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 8850
    invoke-virtual {v1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_68} :catch_69

    return-object p1

    .line 8852
    :catch_69
    move-exception v1

    .line 8853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8857
    :cond_8a
    return-object p1
.end method

.method private blacklist getFillInIntent()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 8870
    iget-object v0, p0, Landroid/widget/RemoteViews;->mFillInIntent:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 8871
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mFillInIntent:Landroid/util/SparseArray;

    .line 8873
    :cond_b
    iget-object v0, p0, Landroid/widget/RemoteViews;->mFillInIntent:Landroid/util/SparseArray;

    return-object v0
.end method

.method private blacklist getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;
    .registers 6

    .line 10362
    new-instance v0, Landroid/widget/RemoteViews$HierarchyRootData;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v2, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v4, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews$HierarchyRootData;-><init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$RemoteCollectionCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V

    return-object v0
.end method

.method private blacklist getIdealSize()Landroid/util/SizeF;
    .registers 2

    .line 6193
    iget-object v0, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    return-object v0
.end method

.method private blacklist getInternalAsyncApplyTask(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/util/SizeF;Landroid/view/View;)Landroid/widget/RemoteViews$AsyncApplyTask;
    .registers 17

    .line 8501
    new-instance v0, Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-virtual {p0, p1, p5}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews-IA;)V

    return-object v0
.end method

.method private static greylist-max-o getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .line 2189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2191
    sget-object v0, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2193
    :try_start_7
    sget-object v1, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v1, p0, p2, p1}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 2194
    sget-object v1, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    sget-object v2, Landroid/widget/RemoteViews;->sLookupKey:Landroid/widget/RemoteViews$MethodKey;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$MethodArgs;
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_141

    .line 2196
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_bf

    .line 2199
    if-nez p2, :cond_23

    .line 2200
    :try_start_1c
    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_2b

    .line 2202
    :cond_23
    new-array v1, v2, [Ljava/lang/Class;

    aput-object p2, v1, v3

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2204
    :goto_2b
    const-class v4, Landroid/view/RemotableViewMethod;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 2210
    new-instance v4, Landroid/widget/RemoteViews$MethodArgs;

    invoke-direct {v4}, Landroid/widget/RemoteViews$MethodArgs;-><init>()V

    .line 2211
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    iput-object v5, v4, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    .line 2212
    const-class v5, Landroid/view/RemotableViewMethod;

    .line 2213
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroid/view/RemotableViewMethod;

    invoke-interface {v1}, Landroid/view/RemotableViewMethod;->asyncImpl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_50} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_50} :catch_8f
    .catchall {:try_start_1c .. :try_end_50} :catchall_141

    .line 2217
    nop

    .line 2219
    :try_start_51
    new-instance v1, Landroid/widget/RemoteViews$MethodKey;

    invoke-direct {v1}, Landroid/widget/RemoteViews$MethodKey;-><init>()V

    .line 2220
    invoke-virtual {v1, p0, p2, p1}, Landroid/widget/RemoteViews$MethodKey;->set(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 2221
    sget-object p2, Landroid/widget/RemoteViews;->sMethods:Landroid/util/ArrayMap;

    invoke-virtual {p2, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_141

    move-object v1, v4

    goto :goto_bf

    .line 2205
    :cond_60
    :try_start_60
    new-instance p3, Landroid/widget/RemoteViews$ActionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t use method with RemoteViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2207
    invoke-static {p2}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_8f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_60 .. :try_end_8f} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_60 .. :try_end_8f} :catch_8f
    .catchall {:try_start_60 .. :try_end_8f} :catchall_141

    .line 2214
    :catch_8f
    move-exception p3

    .line 2215
    :try_start_90
    new-instance p3, Landroid/widget/RemoteViews$ActionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " doesn\'t have method: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2216
    invoke-static {p2}, Landroid/widget/RemoteViews;->getParameters(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2224
    :cond_bf
    :goto_bf
    if-nez p3, :cond_c5

    .line 2225
    iget-object p0, v1, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v0

    return-object p0

    .line 2228
    :cond_c5
    iget-object p2, v1, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d0

    .line 2229
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 2232
    :cond_d0
    iget-object p2, v1, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    if-nez p2, :cond_13d

    .line 2233
    iget-object p2, v1, Landroid/widget/RemoteViews$MethodArgs;->syncMethod:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object p2

    .line 2234
    invoke-virtual {p2, v3, v2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object p2

    const-class p3, Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Ljava/lang/invoke/MethodType;->changeReturnType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p2
    :try_end_e4
    .catchall {:try_start_90 .. :try_end_e4} :catchall_141

    .line 2236
    :try_start_e4
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p3

    iget-object v2, v1, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {p3, p0, v2, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    iput-object p0, v1, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;
    :try_end_f0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e4 .. :try_end_f0} :catch_f1
    .catch Ljava/lang/IllegalAccessException; {:try_start_e4 .. :try_end_f0} :catch_f1
    .catchall {:try_start_e4 .. :try_end_f0} :catchall_141

    .line 2243
    goto :goto_13d

    .line 2238
    :catch_f1
    move-exception p0

    .line 2239
    :try_start_f2
    new-instance p0, Landroid/widget/RemoteViews$ActionException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Async implementation declared as "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v2, v1, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " but not defined for "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": public Runnable "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, v1, Landroid/widget/RemoteViews$MethodArgs;->asyncMethodName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ","

    .line 2242
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterArray()[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2245
    :cond_13d
    :goto_13d
    iget-object p0, v1, Landroid/widget/RemoteViews$MethodArgs;->asyncMethod:Ljava/lang/invoke/MethodHandle;

    monitor-exit v0

    return-object p0

    .line 2246
    :catchall_141
    move-exception p0

    monitor-exit v0
    :try_end_143
    .catchall {:try_start_f2 .. :try_end_143} :catchall_141

    throw p0
.end method

.method private static blacklist getNextRecyclableChild(Landroid/view/ViewGroup;)I
    .registers 2

    .line 4093
    const v0, 0x10204bc

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 4094
    if-nez p0, :cond_d

    const/4 p0, -0x1

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_11
    return p0
.end method

.method private static blacklist getPackageUserKey(Landroid/content/pm/ApplicationInfo;)Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 10357
    if-eqz p0, :cond_14

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_14

    .line 10358
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 10357
    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getParameterType(I)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2141
    packed-switch p0, :pswitch_data_3e

    .line 2181
    const/4 p0, 0x0

    return-object p0

    .line 2179
    :pswitch_5
    const-class p0, Ljava/time/Duration;

    return-object p0

    .line 2177
    :pswitch_8
    const-class p0, Ljava/time/Instant;

    return-object p0

    .line 2175
    :pswitch_b
    const-class p0, Landroid/graphics/BlendMode;

    return-object p0

    .line 2173
    :pswitch_e
    const-class p0, Landroid/graphics/drawable/Icon;

    return-object p0

    .line 2171
    :pswitch_11
    const-class p0, Landroid/content/res/ColorStateList;

    return-object p0

    .line 2169
    :pswitch_14
    const-class p0, Landroid/content/Intent;

    return-object p0

    .line 2167
    :pswitch_17
    const-class p0, Landroid/os/Bundle;

    return-object p0

    .line 2165
    :pswitch_1a
    const-class p0, Landroid/graphics/Bitmap;

    return-object p0

    .line 2163
    :pswitch_1d
    const-class p0, Landroid/net/Uri;

    return-object p0

    .line 2161
    :pswitch_20
    const-class p0, Ljava/lang/CharSequence;

    return-object p0

    .line 2159
    :pswitch_23
    const-class p0, Ljava/lang/String;

    return-object p0

    .line 2157
    :pswitch_26
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 2155
    :pswitch_29
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 2153
    :pswitch_2c
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 2151
    :pswitch_2f
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 2149
    :pswitch_32
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 2147
    :pswitch_35
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 2145
    :pswitch_38
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 2143
    :pswitch_3b
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o getParameters(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2250
    if-nez p0, :cond_5

    const-string p0, "()"

    return-object p0

    .line 2251
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getPendingIntentTemplate()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    .line 8862
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPendingIntentTemplate:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 8863
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPendingIntentTemplate:Landroid/util/SparseArray;

    .line 8865
    :cond_b
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPendingIntentTemplate:Landroid/util/SparseArray;

    return-object v0
.end method

.method private greylist-max-o getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 3

    .line 8207
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 8208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 8209
    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    .line 8210
    iget-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    return-object p1

    .line 8212
    :cond_16
    iget-object p1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    return-object p1

    .line 8214
    :cond_19
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 8215
    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    .line 8217
    :cond_24
    return-object p0
.end method

.method private blacklist getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 5

    .line 8709
    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 8719
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result p3

    if-nez p3, :cond_18

    iget p3, p1, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_18

    .line 8721
    const p3, 0x10204bd

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1e

    .line 8722
    :cond_18
    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 8728
    :cond_1e
    return-object p1

    .line 8723
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-o getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8

    .line 2126
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2127
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 2128
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2129
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2131
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2132
    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 2133
    const/4 v4, 0x1

    aget v6, v1, v4

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2134
    aget v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2135
    aget v1, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    int-to-float p0, v1

    mul-float/2addr p0, v0

    add-float/2addr p0, v5

    float-to-int p0, p0

    iput p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 2136
    return-object v2
.end method

.method private static blacklist getStableId(Landroid/view/View;)I
    .registers 2

    .line 4083
    const v0, 0x10204be

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 4084
    if-nez p0, :cond_d

    const/4 p0, -0x1

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_11
    return p0
.end method

.method private static blacklist getViewLayoutId(Landroid/view/View;)I
    .registers 2

    .line 4098
    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private blacklist hasDrawInstructions()Z
    .registers 2

    .line 8203
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    return v0
.end method

.method private greylist-max-o hasLandscapeAndPortraitLayouts()Z
    .registers 2

    .line 6184
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist hasMultipleLayouts()Z
    .registers 2

    .line 6180
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private blacklist hasSizedRemoteViews()Z
    .registers 2

    .line 6188
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist hasStableId(Landroid/view/View;)Z
    .registers 2

    .line 4078
    const v0, 0x10204be

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 4079
    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private blacklist inflateView(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 7

    .line 8374
    :try_start_0
    invoke-direct {p2}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8375
    const-string v0, "RemoteViews#inflateViewWithDrawInstructions"

    goto :goto_b

    .line 8376
    :cond_9
    const-string v0, "RemoteViews#inflateView"

    .line 8374
    :goto_b
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8377
    invoke-direct/range {p0 .. p5}, Landroid/widget/RemoteViews;->inflateViewInternal(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    .line 8379
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8377
    return-object p1

    .line 8379
    :catchall_16
    move-exception v0

    move-object p1, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8380
    throw p1
.end method

.method private blacklist inflateViewInternal(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 7

    .line 8389
    nop

    .line 8390
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 8391
    if-eqz p5, :cond_a

    .line 8392
    invoke-virtual {p5, v0}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V

    .line 8394
    :cond_a
    new-instance p5, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;

    invoke-direct {p5, p1, v0}, Landroid/widget/RemoteViews$RemoteViewsContextWrapper;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 8397
    if-eqz p4, :cond_17

    .line 8398
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p5, p4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p5, v0

    .line 8402
    :cond_17
    invoke-direct {p2}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_31

    .line 8403
    new-instance p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    invoke-direct {p1, p5}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;-><init>(Landroid/content/Context;)V

    .line 8404
    sget-boolean p3, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p3, :cond_2b

    sget-boolean p3, Landroid/os/Build;->IS_ENG:Z

    if-eqz p3, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    :cond_2c
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDebug(I)V

    .line 8405
    nop

    .line 8406
    goto :goto_57

    .line 8407
    :cond_31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 8411
    invoke-virtual {p1, p5}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 8412
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->shouldUseStaticFilter()Z

    move-result p4

    if-eqz p4, :cond_42

    sget-object p4, Landroid/widget/RemoteViews;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    goto :goto_43

    :cond_42
    move-object p4, p0

    :goto_43
    invoke-virtual {p1, p4}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 8413
    iget-object p4, p0, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz p4, :cond_4f

    .line 8414
    iget-object p4, p0, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-virtual {p1, p4}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 8416
    :cond_4f
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p4

    invoke-virtual {p1, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8418
    :goto_57
    iget p3, p0, Landroid/widget/RemoteViews;->mViewId:I

    const/4 p4, -0x1

    if-eq p3, p4, :cond_6d

    .line 8419
    iget p3, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 8420
    iget p3, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const p4, 0x10204bd

    invoke-virtual {p1, p4, p3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 8422
    :cond_6d
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x1020018

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 8423
    return-object p1
.end method

.method private blacklist initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 7

    .line 6344
    if-nez p2, :cond_14

    .line 6345
    iget-object v0, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 6347
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionCache;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$RemoteCollectionCache;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$RemoteCollectionCache;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 6348
    iget-object v0, p1, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    goto :goto_20

    .line 6350
    :cond_14
    iget-object v0, p2, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 6351
    iget-object v0, p2, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    .line 6352
    iget-object v0, p2, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 6354
    :goto_20
    const/4 v0, 0x0

    if-eqz p2, :cond_2b

    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_28

    goto :goto_2b

    .line 6361
    :cond_28
    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    goto :goto_2f

    .line 6357
    :cond_2b
    :goto_2b
    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 6358
    move-object p2, p0

    .line 6363
    :goto_2f
    iget-object v1, p1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6364
    iget v1, p1, Landroid/widget/RemoteViews;->mLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6365
    iget v1, p1, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    iput v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 6366
    iget v1, p1, Landroid/widget/RemoteViews;->mApplyFlags:I

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 6367
    iget-object v1, p1, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6368
    iget-object v1, p1, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 6369
    iget-wide v1, p1, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    iput-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 6370
    iget-boolean v1, p1, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    iput-boolean v1, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    .line 6372
    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 6373
    iget-object v1, p1, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-static {v1, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .line 6374
    iget-object v1, p1, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-static {v1, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    .line 6377
    :cond_65
    invoke-direct {p1}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 6378
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 6379
    iget-object v1, p1, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 6380
    iget-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-static {v2, p2}, Landroid/widget/RemoteViews;->createInitializedFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6381
    goto :goto_7e

    .line 6384
    :cond_94
    iget-object p2, p1, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz p2, :cond_ad

    .line 6385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    .line 6386
    iget-object v1, p0, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->putClassCookies(Ljava/util/Map;)V

    .line 6387
    invoke-direct {p1, p2, v0}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;I)V

    .line 6388
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 6391
    invoke-direct {p0, p2, v0}, Landroid/widget/RemoteViews;->readActionsFromParcel(Landroid/os/Parcel;I)V

    .line 6392
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 6397
    :cond_ad
    iget-boolean p1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz p1, :cond_b4

    .line 6398
    invoke-direct {p0}, Landroid/widget/RemoteViews;->reconstructCaches()V

    .line 6400
    :cond_b4
    return-void
.end method

.method private blacklist initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Landroid/widget/RemoteViews;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 6288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6289
    nop

    .line 6290
    nop

    .line 6291
    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v2

    move-object v2, v1

    .line 6292
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 6293
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    .line 6294
    invoke-direct {v4}, Landroid/widget/RemoteViews;->getIdealSize()Landroid/util/SizeF;

    move-result-object v5

    .line 6295
    if-eqz v5, :cond_56

    .line 6298
    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v6

    invoke-virtual {v5}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    mul-float/2addr v6, v7

    .line 6299
    if-eqz v1, :cond_3b

    iget-object v7, v1, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/widget/RemoteViews;->hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_33

    goto :goto_3b

    .line 6300
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All RemoteViews must share the same package and user"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6303
    :cond_3b
    :goto_3b
    if-eqz v1, :cond_46

    cmpg-float v7, v6, v3

    if-gez v7, :cond_42

    goto :goto_46

    .line 6310
    :cond_42
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 6304
    :cond_46
    :goto_46
    if-eqz v1, :cond_4b

    .line 6305
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6307
    :cond_4b
    nop

    .line 6308
    move-object v1, v4

    move v3, v6

    .line 6312
    :goto_4e
    invoke-direct {v4, v5}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    .line 6313
    if-nez v2, :cond_55

    .line 6314
    iget-object v2, v4, Landroid/widget/RemoteViews;->mClassCookies:Ljava/util/Map;

    .line 6316
    :cond_55
    goto :goto_d

    .line 6296
    :cond_56
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected RemoteViews to have ideal size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6317
    :cond_5e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6318
    iput-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    .line 6319
    return-object v2
.end method

.method private synthetic blacklist lambda$createFromBitmapReflectionActionFromProto$4(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2710
    const-wide v0, 0x10900000001L

    invoke-static {p3, p1, v0, v1}, Landroid/widget/RemoteViews;->getAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result p2

    .line 2712
    new-instance p3, Landroid/widget/RemoteViews$BitmapReflectionAction;

    .line 2713
    const-wide v0, 0x10900000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    iget-object p4, p4, Landroid/widget/RemoteViews$HierarchyRootData;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 2716
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2715
    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2714
    invoke-virtual {p4, p1}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapForId(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p3, p0, p2, p5, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2712
    return-object p3
.end method

.method static synthetic blacklist lambda$createFromProto$9(Landroid/widget/RemoteViews$3;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10575
    const/16 p2, 0xa

    if-le p4, p2, :cond_19

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_11

    goto :goto_19

    .line 10577
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too many nested views."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10579
    :cond_19
    :goto_19
    const/4 p2, 0x1

    add-int/2addr p4, p2

    .line 10581
    iget-object v0, p0, Landroid/widget/RemoteViews$3;->mRv:Landroid/widget/RemoteViews;

    .line 10582
    iget v1, p0, Landroid/widget/RemoteViews$3;->mApplyFlags:I

    iput v1, v0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 10583
    iget-boolean v1, p0, Landroid/widget/RemoteViews$3;->mIsRoot:Z

    iput-boolean v1, v0, Landroid/widget/RemoteViews;->mIsRoot:Z

    .line 10584
    iget-boolean v1, p0, Landroid/widget/RemoteViews$3;->mHasDrawInstructions:Z

    iput-boolean v1, v0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    .line 10588
    if-nez p3, :cond_3e

    .line 10589
    iget-boolean p3, v0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz p3, :cond_36

    if-ne p4, p2, :cond_36

    .line 10593
    invoke-direct {v0}, Landroid/widget/RemoteViews;->getHierarchyRootData()Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p3

    goto :goto_41

    .line 10590
    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A nested view did not receive HierarchyRootData"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10595
    :cond_3e
    invoke-direct {v0, p3}, Landroid/widget/RemoteViews;->configureAsChild(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 10598
    :goto_41
    nop

    .line 10599
    nop

    .line 10600
    iget-boolean v1, p0, Landroid/widget/RemoteViews$3;->mHasDrawInstructions:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_b8

    .line 10601
    iget-object v1, p0, Landroid/widget/RemoteViews$3;->mPackageName:Ljava/lang/String;

    const-string v4, "No application info"

    invoke-static {v1, v4}, Landroid/widget/RemoteViews;->checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10602
    iget-object v1, p0, Landroid/widget/RemoteViews$3;->mUid:Ljava/lang/Integer;

    const-string v4, "No uid"

    invoke-static {v1, v4}, Landroid/widget/RemoteViews;->checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10603
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/widget/RemoteViews$3;->mUid:Ljava/lang/Integer;

    .line 10604
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 10603
    invoke-virtual {v1, v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 10605
    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 10606
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 10608
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mLayoutResName:Ljava/lang/String;

    const-string v5, "No layout id"

    invoke-static {v4, v5}, Landroid/widget/RemoteViews;->checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10609
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mLayoutResName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 10611
    iget v4, v0, Landroid/widget/RemoteViews;->mLayoutId:I

    const-string v5, "Invalid layout id"

    iget-object v6, p0, Landroid/widget/RemoteViews$3;->mLayoutResName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/widget/RemoteViews;->checkValidResource(ILjava/lang/String;Ljava/lang/String;)V

    .line 10613
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mViewResName:Ljava/lang/String;

    if-eqz v4, :cond_a2

    .line 10614
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mViewResName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Landroid/widget/RemoteViews;->mViewId:I

    .line 10616
    iget v4, v0, Landroid/widget/RemoteViews;->mViewId:I

    const-string v5, "Invalid view id"

    iget-object v6, p0, Landroid/widget/RemoteViews$3;->mViewResName:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/widget/RemoteViews;->checkValidResource(ILjava/lang/String;Ljava/lang/String;)V

    .line 10619
    :cond_a2
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mLightBackgroundResName:Ljava/lang/String;

    if-eqz v4, :cond_b6

    .line 10620
    iget-object v4, p0, Landroid/widget/RemoteViews$3;->mLightBackgroundResName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 10623
    const-string v4, "Invalid light background layout id"

    iget-object v5, p0, Landroid/widget/RemoteViews$3;->mLightBackgroundResName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/widget/RemoteViews;->checkValidResource(ILjava/lang/String;Ljava/lang/String;)V

    .line 10625
    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->setLightBackgroundLayoutId(I)V

    .line 10628
    :cond_b6
    move-object v3, p1

    goto :goto_b9

    .line 10600
    :cond_b8
    move-object v1, v3

    .line 10628
    :goto_b9
    iget-object p1, p0, Landroid/widget/RemoteViews$3;->mPopulateRemoteCollectionCache:Landroid/widget/RemoteViews$PendingResources;

    if-eqz p1, :cond_c2

    .line 10629
    iget-object p1, p0, Landroid/widget/RemoteViews$3;->mPopulateRemoteCollectionCache:Landroid/widget/RemoteViews$PendingResources;

    invoke-interface {p1, v3, v1, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    .line 10632
    :cond_c2
    iget-wide v4, p0, Landroid/widget/RemoteViews$3;->mProviderInstanceId:J

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_ce

    .line 10633
    iget-wide v4, p0, Landroid/widget/RemoteViews$3;->mProviderInstanceId:J

    iput-wide v4, v0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 10635
    :cond_ce
    iget p1, p0, Landroid/widget/RemoteViews$3;->mMode:I

    if-nez p1, :cond_10b

    .line 10636
    iget-object p1, p0, Landroid/widget/RemoteViews$3;->mIdealSize:Landroid/util/SizeF;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    .line 10637
    nop

    .line 10638
    iget-object p0, p0, Landroid/widget/RemoteViews$3;->mActions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_de
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_fb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews$PendingResources;

    .line 10639
    invoke-interface {p1, v3, v1, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews$Action;

    .line 10640
    if-eqz p1, :cond_fa

    .line 10641
    instance-of v4, p1, Landroid/widget/RemoteViews$SetDrawInstructionAction;

    if-eqz v4, :cond_f7

    .line 10642
    move v2, p2

    .line 10644
    :cond_f7
    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 10646
    :cond_fa
    goto :goto_de

    .line 10647
    :cond_fb
    iget-boolean p0, v0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    if-eqz p0, :cond_10a

    if-eqz v2, :cond_102

    goto :goto_10a

    .line 10648
    :cond_102
    new-instance p0, Landroid/widget/RemoteViews$InvalidProtoException;

    const-string p1, "RemoteViews proto is missing DrawInstructions"

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$InvalidProtoException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10651
    :cond_10a
    :goto_10a
    return-object v0

    .line 10652
    :cond_10b
    iget p1, p0, Landroid/widget/RemoteViews$3;->mMode:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_139

    .line 10653
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10655
    iget-object p0, p0, Landroid/widget/RemoteViews$3;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_131

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RemoteViews$PendingResources;

    .line 10656
    invoke-interface {p2, v3, v1, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RemoteViews;

    .line 10658
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10659
    goto :goto_11b

    .line 10660
    :cond_131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;->initializeSizedRemoteViews(Ljava/util/Iterator;)Ljava/util/Map;

    .line 10661
    return-object v0

    .line 10662
    :cond_139
    iget p1, p0, Landroid/widget/RemoteViews$3;->mMode:I

    if-ne p1, p2, :cond_164

    .line 10663
    iget-object p1, p0, Landroid/widget/RemoteViews$3;->mLandscapeViews:Landroid/widget/RemoteViews$PendingResources;

    const-string p2, "Missing landscape views"

    invoke-static {p1, p2}, Landroid/widget/RemoteViews;->checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10664
    iget-object p1, p0, Landroid/widget/RemoteViews$3;->mPortraitViews:Landroid/widget/RemoteViews$PendingResources;

    const-string p2, "Missing portrait views"

    invoke-static {p1, p2}, Landroid/widget/RemoteViews;->checkProtoResultNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10665
    new-instance p1, Landroid/widget/RemoteViews;

    iget-object p2, p0, Landroid/widget/RemoteViews$3;->mLandscapeViews:Landroid/widget/RemoteViews$PendingResources;

    .line 10666
    invoke-interface {p2, v3, v1, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RemoteViews;

    iget-object p0, p0, Landroid/widget/RemoteViews$3;->mPortraitViews:Landroid/widget/RemoteViews$PendingResources;

    .line 10667
    invoke-interface {p0, v3, v1, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;

    invoke-direct {p1, p2, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 10668
    invoke-direct {p1, v0, v0}, Landroid/widget/RemoteViews;->initializeFrom(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 10669
    return-object p1

    .line 10671
    :cond_164
    new-instance p1, Landroid/widget/RemoteViews$InvalidProtoException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Landroid/widget/RemoteViews$3;->mMode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " is not a valid mode."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/widget/RemoteViews$InvalidProtoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic blacklist lambda$createIconFromProto$10(Ljava/util/function/Function;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/graphics/drawable/Icon;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10819
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method private synthetic blacklist lambda$createSetDrawInstructionActionFromProto$6(Ljava/util/List;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6137
    new-instance p2, Landroid/widget/RemoteViews$SetDrawInstructionAction;

    new-instance p3, Landroid/widget/RemoteViews$DrawInstructions$Builder;

    invoke-direct {p3, p1}, Landroid/widget/RemoteViews$DrawInstructions$Builder;-><init>(Ljava/util/List;)V

    .line 6138
    invoke-virtual {p3}, Landroid/widget/RemoteViews$DrawInstructions$Builder;->build()Landroid/widget/RemoteViews$DrawInstructions;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/widget/RemoteViews$SetDrawInstructionAction;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$DrawInstructions;)V

    .line 6137
    return-object p2
.end method

.method private synthetic blacklist lambda$createSetRemoteCollectionItemListAdapterActionFromProto$2(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1499
    const-wide v0, 0x10900000001L

    invoke-static {p3, p1, v0, v1}, Landroid/widget/RemoteViews;->getAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v0

    .line 1501
    new-instance v1, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    .line 1502
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews$PendingResources;

    .line 1504
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-direct {v1, p0, v0, p1}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1501
    return-object v1
.end method

.method private synthetic blacklist lambda$createViewGroupActionAddFromProto$5(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4423
    const-wide v0, 0x10900000001L

    invoke-static {p3, p1, v0, v1}, Landroid/widget/RemoteViews;->getAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v4

    .line 4425
    new-instance v2, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$PendingResources;

    .line 4426
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/widget/RemoteViews;

    .line 4428
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-wide p3, 0x10500000003L

    invoke-virtual {p1, p3, p4, p2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4429
    const-wide p3, 0x10500000004L

    invoke-virtual {p1, p3, p4, p2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    .line 4425
    return-object v2
.end method

.method static synthetic blacklist lambda$estimateIconMemoryUsage$8(Ljava/util/concurrent/atomic/AtomicLong;Landroid/graphics/drawable/Icon;)V
    .registers 4

    .line 6671
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 6672
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 6674
    :cond_1a
    return-void
.end method

.method static synthetic blacklist lambda$new$7(Ljava/util/Map$Entry;)Landroid/widget/RemoteViews;
    .registers 3

    .line 6271
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews;->setIdealSize(Landroid/util/SizeF;)V

    .line 6272
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic blacklist lambda$populateRemoteCollectionCacheFromProto$3(Ljava/util/ArrayList;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$RemoteCollectionCache;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1831
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 1832
    const-wide v1, 0x10300000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1833
    const-wide v2, 0x10900000002L

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1835
    const-wide v3, 0x10b00000003L

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$PendingResources;

    .line 1836
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$PendingResources;->create(Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 1838
    iget-object v3, p3, Landroid/widget/RemoteViews$HierarchyRootData;->mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v3, v1, v2, v0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->addMapping(ILjava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 1839
    goto :goto_4

    .line 1841
    :cond_41
    iget-object p0, p3, Landroid/widget/RemoteViews$HierarchyRootData;->mRemoteCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    return-object p0
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Class;)Z
    .registers 2

    .line 364
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 3

    .line 483
    invoke-virtual {p2, p0}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method private blacklist performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 7

    .line 8772
    invoke-virtual {p3}, Landroid/widget/RemoteViews$ActionApplyParams;->clone()Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    .line 8773
    iget-object v0, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    if-nez v0, :cond_c

    .line 8774
    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_INTERACTION_HANDLER:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object v0, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 8776
    :cond_c
    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    if-eqz v0, :cond_27

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    .line 8777
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 8778
    const/4 v1, -0x2

    goto :goto_24

    :cond_23
    const/4 v1, -0x3

    .line 8777
    :goto_24
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setTheme(I)V

    .line 8780
    :cond_27
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_59

    .line 8781
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8783
    :try_start_31
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 8784
    const-string v1, "RemoteViews#applyActionsWithDrawInstructions"

    goto :goto_3c

    .line 8785
    :cond_3a
    const-string v1, "RemoteViews#applyActions"

    .line 8783
    :goto_3c
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8786
    const/4 v1, 0x0

    :goto_40
    if-ge v1, v0, :cond_50

    .line 8787
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_54

    .line 8786
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 8790
    :cond_50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8791
    goto :goto_59

    .line 8790
    :catchall_54
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8791
    throw p1

    .line 8793
    :cond_59
    :goto_59
    return-void
.end method

.method private blacklist populateRemoteCollectionCacheFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$RemoteCollectionCache;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    const-wide v1, 0x10b0000000fL

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 1783
    :goto_e
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b3

    .line 1784
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const-string v5, "Unhandled field while reading RemoteViews proto!\n"

    const-string v6, "RemoteViews"

    packed-switch v3, :pswitch_data_bc

    .line 1824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1825
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1824
    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1786
    :pswitch_39
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 1788
    const-wide v7, 0x20b00000001L

    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 1790
    :goto_47
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v9

    if-eq v9, v4, :cond_a2

    .line 1791
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v9

    packed-switch v9, :pswitch_data_c2

    .line 1810
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1811
    invoke-static {p1}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1810
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 1803
    :pswitch_6d
    const-wide v9, 0x10b00000003L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v11

    .line 1805
    nop

    .line 1806
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;

    move-result-object v13

    .line 1805
    invoke-virtual {v3, v9, v10, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1807
    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1808
    goto :goto_47

    .line 1798
    :pswitch_82
    nop

    .line 1799
    const-wide v9, 0x10900000002L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v11

    .line 1798
    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1801
    goto :goto_47

    .line 1793
    :pswitch_90
    nop

    .line 1794
    const-wide v9, 0x10300000001L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1793
    invoke-virtual {v3, v9, v10, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1796
    goto :goto_47

    .line 1814
    :cond_a2
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1816
    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_cc

    invoke-static {v3, v4}, Landroid/widget/RemoteViews;->checkContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 1821
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    goto/16 :goto_e

    .line 1828
    :cond_b3
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1830
    new-instance p1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_39
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_90
        :pswitch_82
        :pswitch_6d
    .end packed-switch

    :array_cc
    .array-data 8
        0x10300000001L
        0x10900000002L
        0x10b00000003L
    .end array-data
.end method

.method private greylist-max-o readActionsFromParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 6492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6493
    if-lez v0, :cond_1c

    .line 6494
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 6495
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1c

    .line 6496
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->getActionFromParcel(Landroid/os/Parcel;I)Landroid/widget/RemoteViews$Action;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6495
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 6499
    :cond_1c
    return-void
.end method

.method private blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;Z)V
    .registers 7

    .line 8673
    invoke-direct {p0, p1, p2, p4}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 8674
    invoke-direct {p1, p2, p3, p5}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8677
    if-eqz p6, :cond_12

    instance-of p1, p2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_12

    .line 8678
    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->finalizeViewRecycling(Landroid/view/ViewGroup;)V

    .line 8680
    :cond_12
    return-void
.end method

.method private blacklist reapplyNestedViews(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 12

    .line 8666
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;Z)V

    .line 8667
    return-void
.end method

.method private blacklist reconstructCaches()V
    .registers 3

    .line 6644
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez v0, :cond_5

    return-void

    .line 6645
    :cond_5
    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    .line 6646
    new-instance v0, Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$ApplicationInfoCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    .line 6647
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    iget-object v1, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->getOrPut(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    .line 6648
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 6649
    return-void
.end method

.method private blacklist setIdealSize(Landroid/util/SizeF;)V
    .registers 2

    .line 6197
    iput-object p1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    .line 6198
    return-void
.end method

.method private static blacklist setNextRecyclableChild(Landroid/view/ViewGroup;II)V
    .registers 4

    .line 4102
    const v0, 0x10204bc

    if-ltz p1, :cond_10

    if-lt p1, p2, :cond_8

    goto :goto_10

    .line 4105
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_18

    .line 4103
    :cond_10
    :goto_10
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    .line 4107
    :goto_18
    return-void
.end method

.method private static blacklist setStableId(Landroid/view/View;I)V
    .registers 3

    .line 4088
    const v0, 0x10204be

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 4089
    return-void
.end method

.method private static blacklist squareDistance(Landroid/util/SizeF;Landroid/util/SizeF;)F
    .registers 4

    .line 8226
    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 8227
    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    sub-float/2addr p0, p1

    .line 8228
    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public static blacklist startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;)Z"
        }
    .end annotation

    .line 9685
    const-string v1, "RemoteViews"

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 9689
    nop

    .line 9690
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/content/Intent;

    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityOptions;

    .line 9691
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 9689
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_1f} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_22

    .line 9698
    nop

    .line 9699
    const/4 p0, 0x1

    return p0

    .line 9695
    :catch_22
    move-exception v0

    move-object p0, v0

    .line 9696
    const-string p1, "Cannot send pending intent due to unknown exception: "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9697
    return v2

    .line 9692
    :catch_2a
    move-exception v0

    move-object p0, v0

    .line 9693
    const-string p1, "Cannot send pending intent: "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9694
    return v2
.end method

.method private blacklist tryAddRemoteResponse(I)V
    .registers 5

    .line 8877
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getPendingIntentTemplate()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 8878
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getFillInIntent()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 8879
    if-eqz v0, :cond_24

    if-eqz v1, :cond_24

    .line 8880
    new-instance v2, Landroid/widget/RemoteViews$SetOnClickResponse;

    .line 8881
    invoke-static {v0, v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$smfromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    invoke-direct {v2, p0, p1, v0}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 8880
    invoke-direct {p0, v2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8884
    :cond_24
    return-void
.end method

.method private static greylist-max-o visitIconUri(Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1018
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 1019
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    .line 1020
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1022
    :cond_17
    return-void
.end method

.method private blacklist writeActionsToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 9193
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 9194
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_d

    .line 9196
    :cond_c
    move v0, v1

    .line 9198
    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9199
    nop

    :goto_11
    if-ge v1, v0, :cond_28

    .line 9200
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    .line 9201
    invoke-virtual {v2}, Landroid/widget/RemoteViews$Action;->getActionTag()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9202
    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9199
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 9204
    :cond_28
    return-void
.end method

.method private static blacklist writeColorStateListToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/ColorStateList;J)V
    .registers 4

    .line 10824
    invoke-virtual {p0, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 10825
    invoke-virtual {p1, p0}, Landroid/content/res/ColorStateList;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 10826
    invoke-virtual {p0, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10827
    return-void
.end method

.method private static blacklist writeDurationToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Duration;J)V
    .registers 4

    .line 10861
    invoke-virtual {p0, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 10862
    invoke-static {p0, p1}, Landroid/widget/RemoteViewsSerializers;->writeDurationToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Duration;)V

    .line 10863
    invoke-virtual {p0, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10864
    return-void
.end method

.method private static blacklist writeIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;J)V
    .registers 5

    .line 10809
    invoke-virtual {p0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p3

    .line 10810
    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViewsSerializers;->writeIconToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/res/Resources;Landroid/graphics/drawable/Icon;)V

    .line 10811
    invoke-virtual {p0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10812
    return-void
.end method

.method private static blacklist writeInstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Instant;J)V
    .registers 4

    .line 10846
    invoke-virtual {p0, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 10847
    invoke-static {p0, p1}, Landroid/widget/RemoteViewsSerializers;->writeInstantToProto(Landroid/util/proto/ProtoOutputStream;Ljava/time/Instant;)V

    .line 10848
    invoke-virtual {p0, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10849
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 9141
    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    .line 9143
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4a

    .line 9144
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9147
    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v3, :cond_1d

    .line 9148
    iget-object v3, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v3, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 9149
    iget-object v3, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v3, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    .line 9151
    :cond_1d
    iget-object p3, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9152
    iget-boolean p3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-nez p3, :cond_34

    iget-object p3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    if-nez p3, :cond_2b

    goto :goto_34

    .line 9155
    :cond_2b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9156
    iget-object p3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    invoke-virtual {p3, p1, p2}, Landroid/util/SizeF;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_37

    .line 9153
    :cond_34
    :goto_34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9158
    :goto_37
    iget p3, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9159
    iget p3, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9160
    iget p3, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9161
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;->writeActionsToParcel(Landroid/os/Parcel;I)V

    goto :goto_9d

    .line 9162
    :cond_4a
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 9163
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9164
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_62

    .line 9165
    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 9166
    iget-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    .line 9168
    :cond_62
    iget-object p3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9169
    iget-object p3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_71
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 9170
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9171
    goto :goto_71

    :cond_81
    goto :goto_9d

    .line 9173
    :cond_82
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9176
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_93

    .line 9177
    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    .line 9178
    iget-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    .line 9180
    :cond_93
    iget-object p3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {p3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9182
    iget-object p3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {p3, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 9184
    :goto_9d
    iget p2, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9185
    iget-wide p2, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 9186
    iget-boolean p2, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9188
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 9189
    return-void
.end method


# virtual methods
.method public blacklist addFlags(I)V
    .registers 4

    .line 575
    iget v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 577
    and-int/lit8 p1, p1, 0x6

    .line 578
    if-eqz p1, :cond_36

    .line 579
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 580
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 581
    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 582
    goto :goto_15

    :cond_25
    goto :goto_36

    .line 583
    :cond_26
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 584
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 585
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 588
    :cond_36
    :goto_36
    return-void
.end method

.method public whitelist addStableView(ILandroid/widget/RemoteViews;I)V
    .registers 10

    .line 6743
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    const/4 v4, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6744
    return-void
.end method

.method public whitelist addView(ILandroid/widget/RemoteViews;)V
    .registers 4

    .line 6717
    if-nez p2, :cond_8

    .line 6718
    new-instance p2, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(I)V

    goto :goto_e

    .line 6719
    :cond_8
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    move-object p2, v0

    .line 6717
    :goto_e
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6720
    return-void
.end method

.method public greylist addView(ILandroid/widget/RemoteViews;I)V
    .registers 5

    .line 6758
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6759
    return-void
.end method

.method public whitelist apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 8325
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;
    .registers 11

    .line 8359
    move-object v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;
    .registers 5

    .line 8330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/view/View;
    .registers 6

    .line 8336
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8337
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    .line 8336
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;
    .registers 7

    .line 8351
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8352
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    .line 8353
    invoke-virtual {p3, p5}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    .line 8351
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .registers 11

    .line 8469
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;
    .registers 13

    .line 8475
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;)Landroid/os/CancellationSignal;
    .registers 15

    .line 8482
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;
    .registers 18

    .line 8491
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8492
    invoke-virtual {v0, p5}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p5

    .line 8493
    move-object/from16 v0, p7

    invoke-virtual {p5, v0}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p5

    .line 8494
    invoke-virtual {p5, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withExecutor(Ljava/util/concurrent/Executor;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v6

    .line 8495
    new-instance v0, Landroid/widget/RemoteViews$AsyncApplyTask;

    move-object/from16 p5, p6

    invoke-virtual {p0, p1, p5}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews-IA;)V

    .line 8496
    invoke-static {v0, p3}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object p1

    .line 8495
    return-object p1
.end method

.method public blacklist applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;
    .registers 6

    .line 8343
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8344
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    .line 8345
    invoke-virtual {p3, p4}, Landroid/widget/RemoteViews$ActionApplyParams;->withThemeResId(I)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    .line 8343
    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public blacklist canRecycleView(Landroid/view/View;)Z
    .registers 5

    .line 8684
    const/4 v0, 0x0

    if-eqz p1, :cond_37

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_37

    .line 8687
    :cond_a
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 8688
    if-nez v1, :cond_16

    .line 8689
    return v0

    .line 8691
    :cond_16
    const v2, 0x10204bd

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 8692
    if-nez p1, :cond_23

    const/4 p1, -0x1

    goto :goto_27

    :cond_23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8697
    :goto_27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-ne v1, v2, :cond_36

    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    if-ne v1, p1, :cond_36

    const/4 v0, 0x1

    :cond_36
    return v0

    .line 8685
    :cond_37
    :goto_37
    return v0
.end method

.method public whitelist clone()Landroid/widget/RemoteViews;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6578
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const-string v1, "RemoteView has been attached to another RemoteView. May only clone the root of a RemoteView hierarchy."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 6581
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist collectAllIntents(IZLandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1526
    iget-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsNoComplete(Landroid/widget/RemoteViews;IZLandroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist computeUniqueId(Landroid/widget/RemoteViews;)J
    .registers 8

    .line 10332
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    const/16 v1, 0x8

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_12

    .line 10333
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getProviderInstanceId()J

    move-result-wide v4

    .line 10334
    cmp-long p1, v4, v2

    if-eqz p1, :cond_11

    .line 10335
    shl-long/2addr v4, v1

    .line 10337
    :cond_11
    return-wide v4

    .line 10339
    :cond_12
    if-nez p1, :cond_15

    .line 10340
    return-wide v2

    .line 10342
    :cond_15
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getProviderInstanceId()J

    move-result-wide v4

    .line 10343
    cmp-long v0, v4, v2

    if-nez v0, :cond_1e

    .line 10344
    return-wide v2

    .line 10346
    :cond_1e
    invoke-direct {p1, p0}, Landroid/widget/RemoteViews;->getChildId(Landroid/widget/RemoteViews;)I

    move-result p1

    .line 10347
    const/4 v0, -0x1

    if-ne p1, v0, :cond_26

    .line 10348
    return-wide v2

    .line 10350
    :cond_26
    shl-long v0, v4, v1

    .line 10351
    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 10352
    return-wide v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 9131
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist estimateIconMemoryUsage()J
    .registers 4

    .line 6669
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6670
    new-instance v1, Landroid/widget/RemoteViews$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Landroid/widget/RemoteViews$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p0, v1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 6675
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r estimateMemoryUsage()J
    .registers 3

    .line 6659
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$BitmapCache;->getBitmapMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist estimateTotalBitmapMemoryUsage()J
    .registers 5

    .line 6685
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->estimateIconMemoryUsage()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist getBitmapCache()Landroid/widget/RemoteViews$BitmapCache;
    .registers 2

    .line 2528
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method public blacklist getDarkTextViews()Landroid/widget/RemoteViews;
    .registers 3

    .line 8190
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8191
    return-object p0

    .line 8195
    :cond_8
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 8196
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    .line 8198
    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 8196
    return-object v0

    .line 8198
    :catchall_17
    move-exception v0

    iget v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    .line 8199
    throw v0
.end method

.method public whitelist getLayoutId()I
    .registers 2

    .line 6596
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    if-eqz v0, :cond_e

    .line 6597
    iget v0, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    goto :goto_10

    :cond_e
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    .line 6596
    :goto_10
    return v0
.end method

.method public blacklist getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    return-object v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .registers 2

    .line 6585
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist getProviderInstanceId()J
    .registers 3

    .line 10293
    iget-wide v0, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    return-wide v0
.end method

.method public blacklist getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 4

    .line 8285
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    .line 8289
    :cond_9
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    .line 8287
    :cond_e
    :goto_e
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getRemoteViewsToApplyIfDifferent(Landroid/util/SizeF;Landroid/util/SizeF;)Landroid/widget/RemoteViews;
    .registers 5

    .line 8300
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 8301
    return-object v1

    .line 8303
    :cond_8
    if-nez p1, :cond_f

    invoke-direct {p0}, Landroid/widget/RemoteViews;->findSmallestRemoteView()Landroid/widget/RemoteViews;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 8305
    :goto_13
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->findBestFitLayout(Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object p2

    .line 8306
    if-eq p1, p2, :cond_1a

    .line 8307
    return-object p2

    .line 8309
    :cond_1a
    return-object v1
.end method

.method public greylist-max-o getSequenceNumber()I
    .registers 2

    .line 9114
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist getViewId()I
    .registers 2

    .line 10271
    iget v0, p0, Landroid/widget/RemoteViews;->mViewId:I

    return v0
.end method

.method public blacklist hasFlags(I)Z
    .registers 3

    .line 594
    iget v0, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public blacklist hasLegacyLists()Z
    .registers 6

    .line 990
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 991
    move v0, v1

    :goto_7
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_47

    .line 992
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    .line 993
    instance-of v4, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    if-eqz v4, :cond_22

    move-object v4, v3

    check-cast v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget-object v4, v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-nez v4, :cond_43

    :cond_22
    instance-of v4, v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    if-eqz v4, :cond_2d

    .line 995
    move-object v4, v3

    check-cast v4, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    iget-object v4, v4, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    if-nez v4, :cond_43

    :cond_2d
    instance-of v4, v3, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v4, :cond_44

    .line 997
    check-cast v3, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_44

    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 999
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1000
    :cond_43
    return v2

    .line 991
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1004
    :cond_47
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_66

    .line 1005
    move v0, v1

    :goto_4c
    iget-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_66

    .line 1006
    iget-object v3, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1007
    return v2

    .line 1005
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 1011
    :cond_66
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1012
    return v2

    .line 1014
    :cond_73
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_80

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->hasLegacyLists()Z

    move-result v0

    if-eqz v0, :cond_80

    move v1, v2

    :cond_80
    return v1
.end method

.method public greylist-max-o hasSameAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    .line 9239
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method public blacklist isLegacyListRemoteViews()Z
    .registers 2

    .line 861
    iget-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-static {v0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->-$$Nest$fgetmIdToUriMapping(Landroid/widget/RemoteViews$RemoteCollectionCache;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-r mergeRemoteViews(Landroid/widget/RemoteViews;)V
    .registers 10

    .line 815
    if-nez p1, :cond_3

    return-void

    .line 819
    :cond_3
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    .line 821
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 822
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v1, :cond_18

    .line 823
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 826
    :cond_18
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 827
    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_34

    .line 828
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$Action;

    .line 829
    invoke-virtual {v4}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 832
    :cond_34
    iget-object v0, v0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    .line 833
    if-nez v0, :cond_39

    return-void

    .line 834
    :cond_39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 835
    nop

    :goto_3e
    if-ge v2, v1, :cond_7b

    .line 836
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    .line 837
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v4}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    .line 838
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v5}, Landroid/widget/RemoteViews$Action;->mergeBehavior()I

    move-result v5

    .line 839
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    if-nez v5, :cond_6e

    .line 840
    iget-object v6, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 841
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_6e
    if-eqz v5, :cond_73

    const/4 v4, 0x1

    if-ne v5, v4, :cond_78

    .line 846
    :cond_73
    iget-object v4, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 851
    :cond_7b
    invoke-direct {p0}, Landroid/widget/RemoteViews;->reconstructCaches()V

    .line 852
    return-void
.end method

.method public whitelist onLoadClass(Ljava/lang/Class;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9127
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .registers 5

    .line 8802
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 8803
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8804
    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_21

    .line 8805
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v3}, Landroid/widget/RemoteViews$Action;->prefersAsyncApply()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 8806
    const/4 v0, 0x1

    return v0

    .line 8804
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 8810
    :cond_21
    return v1
.end method

.method public whitelist reapply(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .line 8643
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8644
    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 13

    .line 8661
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;Z)V

    .line 8662
    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 5

    .line 8648
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8649
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    .line 8648
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8650
    return-void
.end method

.method public blacklist reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 7

    .line 8655
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8656
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p3

    .line 8655
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 8657
    return-void
.end method

.method public greylist-max-o reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;
    .registers 11

    .line 8746
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;
    .registers 14

    .line 8752
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;
    .registers 18

    .line 8759
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->getRemoteViewsToReapply(Landroid/content/Context;Landroid/view/View;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 8761
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    .line 8762
    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8763
    invoke-virtual {v0, p5}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object p5

    .line 8764
    invoke-virtual {p5, p3}, Landroid/widget/RemoteViews$ActionApplyParams;->withExecutor(Ljava/util/concurrent/Executor;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v6

    .line 8766
    new-instance v0, Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p5

    move-object v3, p5

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v7, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v9}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews-IA;)V

    .line 8768
    invoke-static {v0, p3}, Landroid/widget/RemoteViews$AsyncApplyTask;->-$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object p1

    .line 8766
    return-object p1
.end method

.method public greylist-max-o reduceImageSizes(II)V
    .registers 6

    .line 534
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v0, v0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 535
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 536
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 537
    invoke-static {v2, p1, p2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 539
    :cond_1b
    return-void
.end method

.method public whitelist removeAllViews(I)V
    .registers 3

    .line 6768
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6769
    return-void
.end method

.method public greylist-max-o removeAllViewsExceptId(II)V
    .registers 4

    .line 6781
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupActionRemove;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6782
    return-void
.end method

.method public blacklist removeFromParent(I)V
    .registers 3

    .line 6793
    new-instance v0, Landroid/widget/RemoteViews$RemoveFromParentAction;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$RemoveFromParentAction;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6794
    return-void
.end method

.method public blacklist replaceAllIntentsWithEmptyList()V
    .registers 2

    .line 1532
    iget-object v0, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v0, p0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->replaceAllIntentsWithEmptyList(Landroid/widget/RemoteViews;)V

    .line 1533
    return-void
.end method

.method public blacklist replaceRemoteCollections(I)Z
    .registers 9

    .line 945
    nop

    .line 946
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    .line 947
    move v0, v1

    move v2, v0

    :goto_8
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_73

    .line 948
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    .line 949
    instance-of v4, v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    const/4 v5, 0x1

    if-eqz v4, :cond_3f

    move-object v4, v3

    check-cast v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget v6, v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    if-ne v6, p1, :cond_3f

    iget-object v6, v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-eqz v6, :cond_3f

    .line 952
    new-instance v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget v3, v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    iget-object v6, v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-direct {v2, p0, v3, v6}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 955
    iget v3, v4, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iput v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    .line 956
    iput-boolean v5, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    .line 957
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 958
    nop

    .line 959
    move v2, v5

    goto :goto_6f

    :cond_3f
    instance-of v4, v3, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    if-eqz v4, :cond_5a

    move-object v4, v3

    check-cast v4, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    iget v6, v4, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    if-ne v6, p1, :cond_5a

    .line 961
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget v6, v4, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mViewId:I

    iget-object v4, v4, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->mIntent:Landroid/content/Intent;

    invoke-direct {v3, p0, v6, v4}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 963
    move v2, v5

    goto :goto_6f

    .line 964
    :cond_5a
    instance-of v4, v3, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v4, :cond_6f

    check-cast v3, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 966
    invoke-static {v3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v3

    or-int/2addr v2, v3

    .line 947
    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 946
    :cond_72
    move v2, v1

    .line 970
    :cond_73
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_90

    .line 971
    nop

    :goto_78
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_90

    .line 972
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 975
    :cond_90
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_9b

    .line 976
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 978
    :cond_9b
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a6

    .line 979
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->replaceRemoteCollections(I)Z

    move-result p1

    or-int/2addr v2, p1

    .line 982
    :cond_a6
    return v2
.end method

.method public whitelist setAccessibilityTraversalAfter(II)V
    .registers 4

    .line 8142
    const-string v0, "setAccessibilityTraversalAfter"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8143
    return-void
.end method

.method public whitelist setAccessibilityTraversalBefore(II)V
    .registers 4

    .line 8132
    const-string v0, "setAccessibilityTraversalBefore"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8133
    return-void
.end method

.method public whitelist setAppWidgetEventTag(II)V
    .registers 5

    .line 565
    new-instance v0, Landroid/widget/RemoteViews$SetIntTagAction;

    const v1, 0x10204b5

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 566
    return-void
.end method

.method public whitelist setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 8017
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8018
    return-void
.end method

.method public whitelist setBlendMode(ILjava/lang/String;Landroid/graphics/BlendMode;)V
    .registers 6

    .line 8029
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x11

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8030
    return-void
.end method

.method public whitelist setBoolean(ILjava/lang/String;Z)V
    .registers 6

    .line 7598
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7599
    return-void
.end method

.method public whitelist setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 8066
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xd

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8067
    return-void
.end method

.method public whitelist setByte(ILjava/lang/String;B)V
    .registers 6

    .line 7609
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7610
    return-void
.end method

.method public whitelist setChar(ILjava/lang/String;C)V
    .registers 6

    .line 7923
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7924
    return-void
.end method

.method public whitelist setCharSequence(ILjava/lang/String;I)V
    .registers 10

    .line 7963
    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/16 v3, 0xa

    const/4 v4, 0x3

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7966
    return-void
.end method

.method public whitelist setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .registers 6

    .line 7945
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xa

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7947
    return-void
.end method

.method public whitelist setCharSequenceAttr(ILjava/lang/String;I)V
    .registers 10

    .line 7982
    new-instance v0, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/16 v3, 0xa

    const/4 v4, 0x3

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7986
    return-void
.end method

.method public whitelist setChronometer(IJLjava/lang/String;Z)V
    .registers 7

    .line 6998
    const-string v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 6999
    const-string p2, "setFormat"

    invoke-virtual {p0, p1, p2, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 7000
    const-string p2, "setStarted"

    invoke-virtual {p0, p1, p2, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7001
    return-void
.end method

.method public blacklist setChronometer(ILjava/time/Instant;Ljava/lang/String;Z)V
    .registers 6

    .line 7021
    const-string v0, "setBase"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInstant(ILjava/lang/String;Ljava/time/Instant;)V

    .line 7022
    const-string p2, "setFormat"

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 7023
    const-string p2, "setStarted"

    invoke-virtual {p0, p1, p2, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7024
    return-void
.end method

.method public whitelist setChronometerCountDown(IZ)V
    .registers 4

    .line 7051
    const-string v0, "setCountDown"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7052
    return-void
.end method

.method public blacklist setChronometerPaused(ILjava/time/Duration;)V
    .registers 4

    .line 7039
    const-string v0, "setPausedDuration"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setDuration(ILjava/lang/String;Ljava/time/Duration;)V

    .line 7040
    return-void
.end method

.method public whitelist setColor(ILjava/lang/String;I)V
    .registers 10

    .line 7703
    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x2

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7705
    return-void
.end method

.method public whitelist setColorAttr(ILjava/lang/String;I)V
    .registers 10

    .line 7721
    new-instance v0, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x2

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7723
    return-void
.end method

.method public whitelist setColorInt(ILjava/lang/String;II)V
    .registers 11

    .line 7740
    new-instance v0, Landroid/widget/RemoteViews$NightModeReflectionAction;

    .line 7745
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 7746
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v3, 0x4

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 7740
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7747
    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;I)V
    .registers 10

    .line 7801
    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/16 v3, 0xf

    const/4 v4, 0x2

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7804
    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V
    .registers 6

    .line 7759
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xf

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7761
    return-void
.end method

.method public whitelist setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .registers 11

    .line 7778
    new-instance v0, Landroid/widget/RemoteViews$NightModeReflectionAction;

    const/16 v3, 0xf

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7785
    return-void
.end method

.method public whitelist setColorStateListAttr(ILjava/lang/String;I)V
    .registers 10

    .line 7820
    new-instance v0, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/16 v3, 0xf

    const/4 v4, 0x2

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7823
    return-void
.end method

.method public whitelist setCompoundButtonChecked(IZ)V
    .registers 4

    .line 8162
    new-instance v0, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetCompoundButtonCheckedAction;-><init>(IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8163
    return-void
.end method

.method public whitelist setContentDescription(ILjava/lang/CharSequence;)V
    .registers 4

    .line 8122
    const-string v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 8123
    return-void
.end method

.method public whitelist setDisplayedChild(II)V
    .registers 4

    .line 6829
    const-string v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6830
    return-void
.end method

.method public whitelist setDouble(ILjava/lang/String;D)V
    .registers 7

    .line 7912
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7913
    return-void
.end method

.method public greylist-max-o setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V
    .registers 6

    .line 7240
    new-instance v0, Landroid/widget/RemoteViews$SetDrawableTint;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$SetDrawableTint;-><init>(IZILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7241
    return-void
.end method

.method public blacklist setDuration(ILjava/lang/String;Ljava/time/Duration;)V
    .registers 6

    .line 8055
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x13

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8056
    return-void
.end method

.method public whitelist setEmptyView(II)V
    .registers 4

    .line 6978
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6979
    return-void
.end method

.method public whitelist setFloat(ILjava/lang/String;F)V
    .registers 6

    .line 7844
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7845
    return-void
.end method

.method public whitelist setFloatDimen(ILjava/lang/String;FI)V
    .registers 11

    .line 7880
    new-instance v0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const/4 v3, 0x6

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(ILjava/lang/String;IFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7883
    return-void
.end method

.method public whitelist setFloatDimen(ILjava/lang/String;I)V
    .registers 10

    .line 7862
    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v3, 0x6

    const/4 v4, 0x1

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7864
    return-void
.end method

.method public whitelist setFloatDimenAttr(ILjava/lang/String;I)V
    .registers 10

    .line 7900
    new-instance v0, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v3, 0x6

    const/4 v4, 0x1

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7902
    return-void
.end method

.method public whitelist setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .registers 6

    .line 8088
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x10

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8089
    return-void
.end method

.method public whitelist setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 11

    .line 8106
    new-instance v0, Landroid/widget/RemoteViews$NightModeReflectionAction;

    const/16 v3, 0x10

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$NightModeReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8113
    return-void
.end method

.method public whitelist setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .registers 4

    .line 6958
    const-string v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 6959
    return-void
.end method

.method public whitelist setImageViewIcon(ILandroid/graphics/drawable/Icon;)V
    .registers 4

    .line 6968
    const-string v0, "setImageIcon"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 6969
    return-void
.end method

.method public whitelist setImageViewResource(II)V
    .registers 4

    .line 6938
    const-string v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6939
    return-void
.end method

.method public whitelist setImageViewUri(ILandroid/net/Uri;)V
    .registers 4

    .line 6948
    const-string v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    .line 6949
    return-void
.end method

.method public blacklist setInstant(ILjava/lang/String;Ljava/time/Instant;)V
    .registers 6

    .line 8042
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x12

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8043
    return-void
.end method

.method public whitelist setInt(ILjava/lang/String;I)V
    .registers 6

    .line 7631
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7632
    return-void
.end method

.method public whitelist setIntDimen(ILjava/lang/String;FI)V
    .registers 11

    .line 7666
    new-instance v0, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;

    const/4 v3, 0x4

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ComplexUnitDimensionReflectionAction;-><init>(ILjava/lang/String;IFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7668
    return-void
.end method

.method public whitelist setIntDimen(ILjava/lang/String;I)V
    .registers 10

    .line 7649
    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x1

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7651
    return-void
.end method

.method public whitelist setIntDimenAttr(ILjava/lang/String;I)V
    .registers 10

    .line 7685
    new-instance v0, Landroid/widget/RemoteViews$AttributeReflectionAction;

    const/4 v3, 0x4

    const/4 v4, 0x1

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$AttributeReflectionAction;-><init>(ILjava/lang/String;III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7687
    return-void
.end method

.method public blacklist setIntTag(III)V
    .registers 5

    .line 547
    new-instance v0, Landroid/widget/RemoteViews$SetIntTagAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$SetIntTagAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 548
    return-void
.end method

.method public whitelist setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .registers 6

    .line 8077
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xe

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8078
    return-void
.end method

.method public whitelist setLabelFor(II)V
    .registers 4

    .line 8152
    const-string v0, "setLabelFor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8153
    return-void
.end method

.method public blacklist setLayoutInflaterFactory(Landroid/view/LayoutInflater$Factory2;)V
    .registers 2

    .line 512
    iput-object p1, p0, Landroid/widget/RemoteViews;->mLayoutInflaterFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 513
    return-void
.end method

.method public whitelist setLightBackgroundLayoutId(I)V
    .registers 2

    .line 8181
    iput p1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 8182
    return-void
.end method

.method public whitelist setLong(ILjava/lang/String;J)V
    .registers 7

    .line 7833
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7834
    return-void
.end method

.method public whitelist setOnCheckedChangeResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V
    .registers 5

    .line 7184
    new-instance v0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;

    .line 7187
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/RemoteViews$RemoteResponse;->setInteractionType(I)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 7184
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7189
    return-void
.end method

.method public whitelist setOnClickFillInIntent(ILandroid/content/Intent;)V
    .registers 4

    .line 7148
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7149
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getFillInIntent()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 7150
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->tryAddRemoteResponse(I)V

    goto :goto_18

    .line 7152
    :cond_11
    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 7154
    :goto_18
    return-void
.end method

.method public whitelist setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 3

    .line 7094
    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V

    .line 7095
    return-void
.end method

.method public whitelist setOnClickResponse(ILandroid/widget/RemoteViews$RemoteResponse;)V
    .registers 4

    .line 7106
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickResponse;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7107
    return-void
.end method

.method public whitelist setOnStylusHandwritingPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 4

    .line 7215
    new-instance v0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7216
    return-void
.end method

.method public whitelist setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .registers 4

    .line 7122
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasDrawInstructions()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7123
    invoke-direct {p0}, Landroid/widget/RemoteViews;->getPendingIntentTemplate()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 7124
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->tryAddRemoteResponse(I)V

    goto :goto_19

    .line 7126
    :cond_11
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7128
    :goto_19
    return-void
.end method

.method public greylist-max-o setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V
    .registers 6

    .line 7279
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string v1, "setProgressBackgroundTintList"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7281
    return-void
.end method

.method public whitelist setProgressBar(IIIZ)V
    .registers 6

    .line 7069
    const-string v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7070
    if-nez p4, :cond_11

    .line 7071
    const-string p4, "setMax"

    invoke-virtual {p0, p1, p4, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7072
    const-string p2, "setProgress"

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7074
    :cond_11
    return-void
.end method

.method public greylist-max-o setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V
    .registers 6

    .line 7291
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string v1, "setIndeterminateTintList"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7293
    return-void
.end method

.method public greylist-max-o setProgressTintList(ILandroid/content/res/ColorStateList;)V
    .registers 6

    .line 7267
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string v1, "setProgressTintList"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7269
    return-void
.end method

.method public blacklist setProviderInstanceId(J)V
    .registers 3

    .line 10281
    iput-wide p1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    .line 10282
    return-void
.end method

.method public whitelist setRadioGroupChecked(II)V
    .registers 4

    .line 8172
    new-instance v0, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetRadioGroupCheckedAction;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8173
    return-void
.end method

.method public whitelist setRelativeScrollPosition(II)V
    .registers 4

    .line 7422
    const-string v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7423
    return-void
.end method

.method public whitelist setRemoteAdapter(IILandroid/content/Intent;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7331
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 7332
    return-void
.end method

.method public whitelist setRemoteAdapter(ILandroid/content/Intent;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7346
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->remoteAdapterConversion()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7347
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    goto :goto_17

    .line 7349
    :cond_f
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7351
    :goto_17
    return-void
.end method

.method public whitelist setRemoteAdapter(ILandroid/widget/RemoteViews$RemoteCollectionItems;)V
    .registers 4

    .line 7402
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7403
    return-void
.end method

.method public greylist-max-r setRemoteAdapter(ILjava/util/ArrayList;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7379
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    .line 7380
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 7381
    int-to-long v2, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 7380
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 7383
    :cond_19
    invoke-virtual {v0, p3}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setViewTypeCount(I)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 7384
    return-void
.end method

.method public greylist-max-o setRemoteInputs(I[Landroid/app/RemoteInput;)V
    .registers 5

    .line 496
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RemoteViews$SetRemoteInputsAction;

    invoke-direct {v1, p1, p2}, Landroid/widget/RemoteViews$SetRemoteInputsAction;-><init>(I[Landroid/app/RemoteInput;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    return-void
.end method

.method public blacklist setRippleDrawableColor(ILandroid/content/res/ColorStateList;)V
    .registers 4

    .line 7256
    new-instance v0, Landroid/widget/RemoteViews$SetRippleDrawableColor;

    invoke-direct {v0, p1, p2}, Landroid/widget/RemoteViews$SetRippleDrawableColor;-><init>(ILandroid/content/res/ColorStateList;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7257
    return-void
.end method

.method public whitelist setScrollPosition(II)V
    .registers 4

    .line 7412
    const-string v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7413
    return-void
.end method

.method public whitelist setShort(ILjava/lang/String;S)V
    .registers 6

    .line 7620
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7621
    return-void
.end method

.method public whitelist setString(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 7934
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0x9

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7935
    return-void
.end method

.method public whitelist setTextColor(II)V
    .registers 4

    .line 7303
    const-string v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7304
    return-void
.end method

.method public greylist-max-o setTextColor(ILandroid/content/res/ColorStateList;)V
    .registers 6

    .line 7314
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const-string v1, "setTextColor"

    const/16 v2, 0xf

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7316
    return-void
.end method

.method public whitelist setTextViewCompoundDrawables(IIIII)V
    .registers 13

    .line 6875
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6876
    return-void
.end method

.method public greylist-max-o setTextViewCompoundDrawables(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 13

    .line 6909
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6910
    return-void
.end method

.method public whitelist setTextViewCompoundDrawablesRelative(IIIII)V
    .registers 13

    .line 6891
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x1

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6892
    return-void
.end method

.method public greylist-max-o setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .registers 13

    .line 6928
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v2, 0x1

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6929
    return-void
.end method

.method public whitelist setTextViewText(ILjava/lang/CharSequence;)V
    .registers 4

    .line 6849
    const-string v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 6850
    return-void
.end method

.method public whitelist setTextViewTextSize(IIF)V
    .registers 5

    .line 6860
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6861
    return-void
.end method

.method public whitelist setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 6

    .line 7996
    if-eqz p3, :cond_11

    .line 7998
    invoke-virtual {p3}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p3

    .line 7999
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8000
    const-string v0, "RemoteViews.setUri()"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 8003
    :cond_11
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v1, 0xb

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 8004
    return-void
.end method

.method public whitelist setViewLayoutHeight(IFI)V
    .registers 6

    .line 7536
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7537
    return-void
.end method

.method public whitelist setViewLayoutHeightAttr(II)V
    .registers 6

    .line 7557
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7559
    return-void
.end method

.method public whitelist setViewLayoutHeightDimen(II)V
    .registers 6

    .line 7546
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x9

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7548
    return-void
.end method

.method public whitelist setViewLayoutMargin(IIFI)V
    .registers 6

    .line 7480
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7481
    return-void
.end method

.method public whitelist setViewLayoutMarginAttr(III)V
    .registers 6

    .line 7462
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7463
    return-void
.end method

.method public whitelist setViewLayoutMarginDimen(III)V
    .registers 6

    .line 7449
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7450
    return-void
.end method

.method public whitelist setViewLayoutWidth(IFI)V
    .registers 6

    .line 7497
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p2, p3}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7498
    return-void
.end method

.method public whitelist setViewLayoutWidthAttr(II)V
    .registers 6

    .line 7518
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7520
    return-void
.end method

.method public whitelist setViewLayoutWidthDimen(II)V
    .registers 6

    .line 7507
    new-instance v0, Landroid/widget/RemoteViews$LayoutParamAction;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7509
    return-void
.end method

.method public whitelist setViewOutlinePreferredRadius(IFI)V
    .registers 5

    .line 7571
    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(IFI)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7572
    return-void
.end method

.method public whitelist setViewOutlinePreferredRadiusAttr(II)V
    .registers 5

    .line 7587
    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7588
    return-void
.end method

.method public whitelist setViewOutlinePreferredRadiusDimen(II)V
    .registers 5

    .line 7579
    new-instance v0, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/RemoteViews$SetViewOutlinePreferredRadiusAction;-><init>(III)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7580
    return-void
.end method

.method public whitelist setViewPadding(IIIII)V
    .registers 12

    .line 7436
    new-instance v0, Landroid/widget/RemoteViews$ViewPaddingAction;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(IIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 7437
    return-void
.end method

.method public whitelist setViewVisibility(II)V
    .registers 4

    .line 6839
    const-string v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6840
    return-void
.end method

.method protected blacklist shouldUseStaticFilter()Z
    .registers 3

    .line 8434
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist showNext(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6806
    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6807
    return-void
.end method

.method public whitelist showPrevious(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6819
    new-instance v0, Landroid/widget/RemoteViews$ViewContentNavigation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewContentNavigation;-><init>(Landroid/widget/RemoteViews;IZ)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    .line 6820
    return-void
.end method

.method public blacklist updateAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 4

    .line 8815
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->get(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 8816
    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 8820
    return-void

    .line 8825
    :cond_13
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplicationInfoCache:Landroid/widget/RemoteViews$ApplicationInfoCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->put(Landroid/content/pm/ApplicationInfo;)V

    .line 8826
    invoke-direct {p0}, Landroid/widget/RemoteViews;->configureDescendantsAsChildren()V

    .line 8827
    return-void
.end method

.method public blacklist visitIcons(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Icon;",
            ">;)V"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 923
    move v0, v1

    :goto_6
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 924
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->visitIcons(Ljava/util/function/Consumer;)V

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 927
    :cond_1c
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_37

    .line 928
    nop

    :goto_21
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    .line 929
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 932
    :cond_37
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_40

    .line 933
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 935
    :cond_40
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_49

    .line 936
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitIcons(Ljava/util/function/Consumer;)V

    .line 938
    :cond_49
    return-void
.end method

.method public blacklist visitRemoteViews(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/RemoteViews;",
            ">;)V"
        }
    .end annotation

    .line 870
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 871
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 872
    move v0, v1

    :goto_9
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 873
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->visitRemoteViews(Ljava/util/function/Consumer;)V

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 876
    :cond_1f
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_3a

    .line 877
    nop

    :goto_24
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 878
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitRemoteViews(Ljava/util/function/Consumer;)V

    .line 877
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 881
    :cond_3a
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_43

    .line 882
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitRemoteViews(Ljava/util/function/Consumer;)V

    .line 884
    :cond_43
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4c

    .line 885
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitRemoteViews(Ljava/util/function/Consumer;)V

    .line 887
    :cond_4c
    return-void
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 899
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 900
    move v0, v1

    :goto_6
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 901
    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->visitUris(Ljava/util/function/Consumer;)V

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 904
    :cond_1c
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    if-eqz v0, :cond_37

    .line 905
    nop

    :goto_21
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_37

    .line 906
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 905
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 909
    :cond_37
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_40

    .line 910
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 912
    :cond_40
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_49

    .line 913
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 915
    :cond_49
    return-void
.end method

.method public blacklist writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V
    .registers 9

    .line 10390
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1c

    .line 10392
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p2, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10393
    iget-object v0, p0, Landroid/widget/RemoteViews;->mApplication:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v1, 0x10500000011L

    invoke-virtual {p2, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10395
    :cond_1c
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getContextForResourcesEnsuringCorrectCachedApkPaths(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 10396
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 10397
    iget v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    if-eqz v1, :cond_36

    .line 10398
    iget v1, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x10900000003L

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10400
    :cond_36
    iget v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    if-eqz v1, :cond_48

    .line 10401
    iget v1, p0, Landroid/widget/RemoteViews;->mLightBackgroundLayoutId:I

    .line 10402
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 10401
    const-wide v2, 0x10900000004L

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10404
    :cond_48
    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    if-eqz v1, :cond_5f

    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5f

    .line 10405
    iget v1, p0, Landroid/widget/RemoteViews;->mViewId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    const-wide v2, 0x10900000005L

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 10407
    :cond_5f
    iget-boolean v1, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v1, :cond_6d

    .line 10408
    iget-object v1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 10409
    iget-object v1, p0, Landroid/widget/RemoteViews;->mCollectionCache:Landroid/widget/RemoteViews$RemoteCollectionCache;

    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->writeToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 10411
    :cond_6d
    const-wide v1, 0x1080000000cL

    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    invoke-virtual {p2, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 10412
    const-wide v1, 0x10500000007L

    iget v3, p0, Landroid/widget/RemoteViews;->mApplyFlags:I

    invoke-virtual {p2, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10413
    const-wide v1, 0x1080000000dL

    iget-boolean v3, p0, Landroid/widget/RemoteViews;->mHasDrawInstructions:Z

    invoke-virtual {p2, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 10414
    iget-wide v1, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9d

    .line 10415
    const-wide v1, 0x10300000008L

    iget-wide v3, p0, Landroid/widget/RemoteViews;->mProviderInstanceId:J

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 10418
    :cond_9d
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasMultipleLayouts()Z

    move-result v1

    const-wide v2, 0x10500000001L

    if-nez v1, :cond_105

    .line 10419
    const/4 v1, 0x0

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10420
    iget-object v1, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    if-eqz v1, :cond_d8

    .line 10421
    const-wide v1, 0x10b00000006L

    invoke-virtual {p2, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 10422
    iget-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    const-wide v4, 0x10200000001L

    invoke-virtual {p2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 10423
    iget-object v3, p0, Landroid/widget/RemoteViews;->mIdealSize:Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    const-wide v4, 0x10200000002L

    invoke-virtual {p2, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 10424
    invoke-virtual {p2, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10427
    :cond_d8
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_158

    .line 10428
    iget-object v1, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    .line 10429
    invoke-virtual {v2}, Landroid/widget/RemoteViews$Action;->canWriteToProto()Z

    move-result v3

    if-eqz v3, :cond_103

    .line 10430
    const-wide v3, 0x20b00000010L

    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 10431
    invoke-virtual {v2, p2, p1, v0}, Landroid/widget/RemoteViews$Action;->writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 10432
    invoke-virtual {p2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10434
    :cond_103
    goto :goto_e2

    :cond_104
    goto :goto_158

    .line 10436
    :cond_105
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasSizedRemoteViews()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 10437
    const/4 v0, 0x2

    invoke-virtual {p2, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10438
    iget-object v0, p0, Landroid/widget/RemoteViews;->mSizedRemoteViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_115
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_131

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 10439
    const-wide v2, 0x20b00000009L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 10440
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 10441
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10442
    goto :goto_115

    :cond_131
    goto :goto_158

    .line 10444
    :cond_132
    const/4 v0, 0x1

    invoke-virtual {p2, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 10445
    const-wide v0, 0x10b0000000bL

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 10446
    iget-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 10447
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10448
    const-wide v0, 0x10b0000000aL

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 10449
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v2, p1, p2}, Landroid/widget/RemoteViews;->writePreviewToProto(Landroid/content/Context;Landroid/util/proto/ProtoOutputStream;)V

    .line 10450
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10452
    :cond_158
    :goto_158
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 9136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    .line 9137
    return-void
.end method
