<?php

namespace Contracts;

/**
 * Represents our request
 */
interface RequestInterface
{
    /**
     * After data validation we should be able to retreive our data object
     */
    public function data(): DataObjectInterface;
}
