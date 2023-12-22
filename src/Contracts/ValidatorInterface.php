<?php

namespace Contracts;

interface ValidatorInterface
{
    /**
     * Validate your request
     */
    public function validate(): void;
}
